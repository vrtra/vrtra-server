-- ------------------------------------------
-- -----------MISC ITEM ADJUSTMENTS----------
-- ------------------------------------------
UPDATE item_equipment SET jobs = 36257 WHERE itemId = 16555; -- Ridill for BLU
UPDATE item_equipment SET level = 80 AND MId = 53 WHERE itemid = 16076; -- Coven Hat LVL80 fix
-- ------------------------------------------
-- -------------EMPYREAN WEAPONS-------------
-- ------------------------------------------
UPDATE item_equipment SET scriptType = 1 WHERE itemid > 19396 AND itemid < 19411; -- Enable LUA for Aftermath on LVL80 weapons
-- Daurdabla
UPDATE item_equipment SET level = 80 WHERE itemid = 18573; -- Lowers Pyf Harp to LVL80
UPDATE item_equipment SET level = 80 WHERE itemid = 18574; -- Lowers Daurdabla to LVL80
-- Ochain
UPDATE item_equipment SET level = 80 WHERE itemid = 16191; -- Lowers Utilis Shield to LVL80
UPDATE item_equipment SET level = 80 WHERE itemid = 16192; -- Lowers Ochain to LVL80

#afterglow
#empy afterglow
update item_equipment set MId = 494 where itemid = 19397; -- Verethragna 
update item_equipment set MId = 571 where itemid = 19398; -- Twashtar
update item_equipment set MId = 572 where itemid = 19399; -- Almace
update item_equipment set MId = 573 where itemid = 19400; -- Caladbolg
update item_equipment set MId = 574 where itemid = 19401; -- Farsha
update item_equipment set MId = 575 where itemid = 19402; -- Ukonvasara
update item_equipment set MId = 576 where itemid = 19403; -- Redemption
update item_equipment set MId = 577 where itemid = 19404; -- Rhongomiant
update item_equipment set MId = 578 where itemid = 19405; -- Kannagi
update item_equipment set MId = 579 where itemid = 19406; -- Masamune
update item_equipment set MId = 580 where itemid = 19407; -- Gambanteinn
update item_equipment set MId = 581 where itemid = 19408; -- Hvergelmir
update item_equipment set MId = 108 where itemid = 19409; -- Gandiva
update item_equipment set MId = 109 where itemid = 19410; -- Armageddon
update item_equipment set MId = 110 where itemid = 18574; -- Daurdabla
update item_equipment set MId = 57 where itemid = 16192; -- Ochain


#mythic afterglow
update item_equipment set MId = 555 where itemid = 19060; -- conqueror
update item_equipment set MId = 496 where itemid = 19061; -- glanzfaust
update item_equipment set MId = 556 where itemid = 19062; -- yagrush
update item_equipment set MId = 557 where itemid = 19063; -- laevateinn
update item_equipment set MId = 558 where itemid = 19064; -- murgleis
update item_equipment set MId = 559 where itemid = 19065; -- vajra
update item_equipment set MId = 560 where itemid = 19066; -- burtgang
update item_equipment set MId = 561 where itemid = 19067; -- liberator
update item_equipment set MId = 562 where itemid = 19068; -- aymur
update item_equipment set MId = 563 where itemid = 19069; -- carnwenhan
update item_equipment set MId = 106 where itemid = 19070; -- gastraphetes
update item_equipment set MId = 564 where itemid = 19071; -- kogarasumaru
update item_equipment set MId = 565 where itemid = 19072; -- nagi
update item_equipment set MId = 567 where itemid = 19073; -- ryunohige
update item_equipment set MId = 567 where itemid = 19074; -- nirvana
update item_equipment set MId = 568 where itemid = 19075; -- tizona
update item_equipment set MId = 1107 where itemid = 19076; -- death_penalty
update item_equipment set MId = 495 where itemid = 19077; -- kenkonken
update item_equipment set MId = 569 where itemid = 19078; -- terpsichore
update item_equipment set MId = 570 where itemid = 19079; -- tupsimati

#relic afterglow
update item_equipment set MId = 497 where itemid = 18265; -- spharai
update item_equipment set MId = 544 where itemid = 18271; -- mandau
update item_equipment set MId = 545 where itemid = 18277; -- excalibur
update item_equipment set MId = 546 where itemid = 18283; -- ragnarok
update item_equipment set MId = 547 where itemid = 18289; -- guttler
update item_equipment set MId = 548 where itemid = 18295; -- bravura
update item_equipment set MId = 549 where itemid = 18301; -- gungnir
update item_equipment set MId = 550 where itemid = 18307; -- apocalypse
update item_equipment set MId = 551 where itemid = 18313; -- kikoku
update item_equipment set MId = 552 where itemid = 18319; -- amanomurakumo
update item_equipment set MId = 553 where itemid = 18325; -- mjollnir
update item_equipment set MId = 554 where itemid = 18331; -- claustrum
update item_equipment set MId = 103 where itemid = 18337; -- annihilator
update item_equipment set MId = 104 where itemid = 18349; -- yoichinoyumi
update item_equipment set MId = 105 where itemid = 18577; -- gjallarhorn
update item_equipment set MId = 59 where itemid = 16195; -- aegis

