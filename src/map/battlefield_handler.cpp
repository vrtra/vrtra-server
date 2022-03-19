﻿/*
===========================================================================

Copyright (c) 2010-2015 Darkstar Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include <algorithm>
#include <cstring>

#include "ai/states/death_state.h"

#include "alliance.h"

#include "battlefield.h"
#include "battlefield_handler.h"

#include "entities/battleentity.h"
#include "entities/charentity.h"
#include "entities/mobentity.h"

#include "lua/luautils.h"

#include "packets/char_recast.h"
#include "packets/char_skills.h"
#include "packets/message_basic.h"

#include "recast_container.h"
#include "status_effect.h"
#include "status_effect_container.h"

#include "utils/charutils.h"
#include "utils/zoneutils.h"

#include "zone.h"

CBattlefieldHandler::CBattlefieldHandler(CZone* PZone)
{
    m_PZone           = PZone;
    m_MaxBattlefields = luautils::OnBattlefieldHandlerInitialise(PZone);
}

void CBattlefieldHandler::HandleBattlefields(time_point tick)
{
    TracyZoneScoped;
    // todo: use raw pointers otherwise might be harming lua
    // dont want this to run again if we removed a battlefield
    for (auto& PBattlefield : m_Battlefields)
    {
        if (!PBattlefield.second->CanCleanup())
        {
            PBattlefield.second->onTick(tick);
        }
    }

    // can't std::remove_if in map so i'll workaround it
    for (auto it = m_Battlefields.begin(); it != m_Battlefields.end();)
    {
        auto* PBattlefield = it->second;
        if (PBattlefield->CanCleanup())
        {
            PBattlefield->Cleanup();
            it = m_Battlefields.erase(it);
            ShowDebug("[CBattlefieldHandler]HandleBattlefields cleaned up Battlefield %s", PBattlefield->GetName().c_str());
            delete PBattlefield;
        }
        else
        {
            ++it;
        }
    }
}

uint8 CBattlefieldHandler::LoadBattlefield(CCharEntity* PChar, uint16 battlefieldID, uint8 area)
{
    TracyZoneScoped;
    if (PChar->PBattlefield == nullptr && m_Battlefields.size() < m_MaxBattlefields)
    {
        for (auto&& battlefield : m_Battlefields)
        {
            if (battlefield.first == area)
            {
                return BATTLEFIELD_RETURN_CODE_INCREMENT_REQUEST;
            }
        }

        if (battlefieldID == 0xFFFF)
        {
            // made it this far so looks like there's a free battlefield
            return BATTLEFIELD_RETURN_CODE_CUTSCENE;
        }

        const auto* fmtQuery = "SELECT name, fastestName, fastestTime, fastestPartySize, timeLimit, levelCap, lootDropId, partySize, rules, isMission\
                            FROM bcnm_info i\
                            WHERE bcnmId = %u";

        auto ret = sql->Query(fmtQuery, battlefieldID);

        if (ret == SQL_ERROR || sql->NumRows() == 0 || sql->NextRow() != SQL_SUCCESS)
        {
            ShowError("Cannot load battlefield : %u ", battlefieldID);
            return BATTLEFIELD_RETURN_CODE_REQS_NOT_MET;
        }
        else
        {
            auto* PBattlefield = new CBattlefield(battlefieldID, m_PZone, area, PChar);

            auto* name                = sql->GetData(0);
            auto* recordholder        = sql->GetData(1);
            auto  recordtime          = std::chrono::seconds(sql->GetUIntData(2));
            auto  recordPartySize     = sql->GetUIntData(3);
            auto  timelimit           = std::chrono::seconds(sql->GetUIntData(4));
            auto  levelcap            = sql->GetUIntData(5);
            auto  lootid              = sql->GetUIntData(6);
            auto  maxplayers          = sql->GetUIntData(7);
            auto  rulemask            = sql->GetUIntData(8);
            PBattlefield->m_isMission = sql->GetUIntData(9);

            PBattlefield->SetName((char*)name);
            PBattlefield->SetRecord((char*)recordholder, recordtime, recordPartySize);
            PBattlefield->SetTimeLimit(timelimit);
            PBattlefield->SetLevelCap(levelcap);

            PBattlefield->SetMaxParticipants(maxplayers);
            PBattlefield->SetRuleMask(rulemask);

            m_Battlefields.insert(std::make_pair(PBattlefield->GetArea(), PBattlefield));

            if (!PBattlefield->LoadMobs())
            {
                PBattlefield->SetStatus(BATTLEFIELD_STATUS_LOST);
                PBattlefield->CanCleanup(true);
                PBattlefield->Cleanup();
                ShowDebug("battlefield loading failed");
                return BATTLEFIELD_RETURN_CODE_WAIT;
            }

            if (lootid != 0)
            {
                PBattlefield->SetLocalVar("loot", lootid);
            }

            luautils::OnBattlefieldInitialise(PBattlefield);
            PBattlefield->InsertEntity(PChar, true);

            return BATTLEFIELD_RETURN_CODE_CUTSCENE;
        }
    }
    return BATTLEFIELD_RETURN_CODE_WAIT;
}

CBattlefield* CBattlefieldHandler::GetBattlefield(CBaseEntity* PEntity, bool checkRegistered)
{
    auto* entity = dynamic_cast<CBattleEntity*>(PEntity);

    if (checkRegistered && entity && entity->objtype == TYPE_PC)
    {
        for (auto& battlefield : m_Battlefields)
        {
            if (battlefield.second->IsRegistered(static_cast<CCharEntity*>(entity)))
            {
                return battlefield.second;
            }
        }
        return nullptr;
    }

    for (auto& battlefield : m_Battlefields)
    {
        if (battlefield.second->GetEntity(entity))
        {
            return battlefield.second;
        }
    }
    return nullptr;
}

CBattlefield* CBattlefieldHandler::GetBattlefieldByArea(uint8 area) const
{
    const auto it = m_Battlefields.find(area);
    return it != m_Battlefields.end() ? it->second : nullptr;
}

CBattlefield* CBattlefieldHandler::GetBattlefieldByInitiator(uint32 charID)
{
    for (auto& battlefield : m_Battlefields)
    {
        if (battlefield.second->GetInitiator().id == charID)
        {
            return battlefield.second;
        }
    }
    return nullptr;
}

uint8 CBattlefieldHandler::RegisterBattlefield(CCharEntity* PChar, uint16 battlefieldId, uint8 area, uint32 initiator)
{
    if (PChar->PBattlefield)
    {
        ShowDebug("%s tried to enter another battlefield", PChar->GetName());
        return BATTLEFIELD_RETURN_CODE_WAIT;
    }
    // attempt to add to an existing battlefield
    auto* PBattlefield = GetBattlefield(PChar, true);

    // couldnt find this character registered, try find by id and initiator
    if (!PBattlefield)
    {
        for (const auto& battlefield : m_Battlefields)
        {
            if (battlefield.second->GetInitiator().id == initiator && battlefield.second->GetID() == battlefieldId)
            {
                PBattlefield = battlefield.second;
                break;
            }
        }
    }
    // entity wasnt found in battlefield, assume they have the effect but not physically inside battlefield
    if (PBattlefield)
    {
        if (!PBattlefield->CheckInProgress())
        {
            // players havent started fighting yet, try entering
            if (area != PBattlefield->GetArea())
            {
                return BATTLEFIELD_RETURN_CODE_INCREMENT_REQUEST;
            }

            return PBattlefield->InsertEntity(PChar, false) ? BATTLEFIELD_RETURN_CODE_CUTSCENE : BATTLEFIELD_RETURN_CODE_BATTLEFIELD_FULL;
        }
        else
        {
            // todo: probably clear registered chars
            // can't enter, mobs been slapped
            return BATTLEFIELD_RETURN_CODE_LOCKED;
        }
    }
    return LoadBattlefield(PChar, battlefieldId, area);
}

bool CBattlefieldHandler::RemoveFromBattlefield(CBaseEntity* PEntity, CBattlefield* PBattlefield, uint8 leavecode)
{
    PBattlefield = PBattlefield ? PBattlefield : GetBattlefield(PEntity);
    return PBattlefield ? PBattlefield->RemoveEntity(PEntity, leavecode) : false;
}

bool CBattlefieldHandler::IsRegistered(CCharEntity* PChar)
{
    for (const auto& battlefield : m_Battlefields)
    {
        if (battlefield.second->IsRegistered(PChar))
        {
            return true;
        }
    }
    return false;
}

bool CBattlefieldHandler::ReachedMaxCapacity(int battlefieldId) const
{
    // area all areas full
    if (m_Battlefields.size() >= (size_t)m_MaxBattlefields)
    {
        return true;
    }

    // we have at least one free area and id has been passed so lets look it up
    if (battlefieldId != -1)
    {
        std::string query("SELECT battlefieldNumber FROM bcnm_battlefield WHERE bcnmId = %i;");
        auto        ret = sql->Query(query.c_str(), battlefieldId);
        if (ret != SQL_ERROR && sql->NumRows() != 0)
        {
            while (sql->NextRow() == SQL_SUCCESS)
            {
                auto area = sql->GetUIntData(0);
                if (m_Battlefields.find(area) == m_Battlefields.end())
                {
                    return false; // this area hasnt been loaded in for this battlefield
                }
            }
        }
        // all areas for this battlefield are full
        return true;
    }
    // we have a free battlefield
    return false;
}
