DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20231126224918');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20231126224918');
-- Add your query below.


-- Pathing for Harb Foulmountain Entry: 14426
SET @NPC := 21564;
UPDATE `creature` SET `wander_distance`=0,`movement_type`=2,`position_x`=-4929.023,`position_y`=-2066.4766,`position_z`=85.52668 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`wander_distance`,`script_id`) VALUES
(@NPC,1,-4929.023,-2066.4766,85.52668,100,0,0,0),
(@NPC,2,-4905.3555,-2069.9805,84.25914,100,0,0,0),
(@NPC,3,-4899.6943,-2061.0269,83.636856,100,0,0,0),
(@NPC,4,-4891.1626,-2039.651,83.30705,100,0,0,0),
(@NPC,5,-4881.945,-2017.6359,86.298546,100,0,0,0),
(@NPC,6,-4873.128,-1993.7965,91.65875,100,0,0,0),
(@NPC,7,-4878.21,-1974.4436,92.018616,100,0,0,0),
(@NPC,8,-4873.579,-1956.8225,90.450455,100,0,0,0),
(@NPC,9,-4862.9395,-1946.7357,86.90235,100,0,0,0),
(@NPC,10,-4834.9155,-1923.0642,84.13316,100,0,0,0),
(@NPC,11,-4801.48,-1895.6833,89.333145,100,0,0,0),
(@NPC,12,-4776.8984,-1881.0486,90.39604,100,0,0,0),
(@NPC,13,-4751.4434,-1865.2213,88.92392,100,0,0,0),
(@NPC,14,-4776.8984,-1881.0486,90.39604,100,0,0,0),
(@NPC,15,-4801.48,-1895.6833,89.333145,100,0,0,0),
(@NPC,16,-4834.9155,-1923.0642,84.13316,100,0,0,0),
(@NPC,17,-4862.9395,-1946.7357,86.90235,100,0,0,0),
(@NPC,18,-4873.579,-1956.8225,90.450455,100,0,0,0),
(@NPC,19,-4878.21,-1974.4436,92.018616,100,0,0,0),
(@NPC,20,-4873.128,-1993.7965,91.65875,100,0,0,0),
(@NPC,21,-4881.914,-2017.5612,86.331604,100,0,0,0),
(@NPC,22,-4891.1626,-2039.651,83.30705,100,0,0,0),
(@NPC,23,-4899.6943,-2061.0269,83.636856,100,0,0,0),
(@NPC,24,-4905.3555,-2069.9805,84.25914,100,0,0,0);
-- .go xyz -4929.023 -2066.4766 85.52668


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
