---------------------------------------------------------------------------------------------------
-- func: @king -- Spawns all the Zilart king NMs and CoP Wyrms
-- auth: Rev
-- desc: Allows GM's to force spawn all Zilart kigns and CoP wyrms at once
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "iiii"
}
function onTrigger(player)
        DespawnMob('17297440')             -- Behemoth
        SpawnMob('17297441','160000')      -- King Behemoth            
        DespawnMob('17301537')             -- Adamantoise
        SpawnMob('17301538','160000')      -- Aspidochelone
        DespawnMob('17408018')             -- Fafnir
		SpawnMob('17408019','160000')      -- Nidhogg
        DespawnMob('17391802')             -- Orcish Overlord
        SpawnMob('17391803','160000')      -- Overlord Bakgodek
        DespawnMob('17396134')             -- Yagudo Avatar
        SpawnMob('17396137','160000')      -- Tzee Xicu the Manifest
        DespawnMob('17383442')             -- Diamond Quadav
        SpawnMob('17383443','160000')      -- Za'Dha the Adamantking
        SpawnMob('16806227','160000')      -- Tiamat
        SpawnMob('16797969','160000')      -- Jormungand
        SpawnMob('17174889','160000')      -- Bloodlapper
        SpawnMob('17555890','160000')      -- Vrtra
    player:PrintToPlayer("Zilart Kings/CoP Wyrms Spawned")

end