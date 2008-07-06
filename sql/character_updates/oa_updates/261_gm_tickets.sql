-- Create new primary key...this time the "guid" will be really unique
ALTER TABLE `gm_tickets` DROP PRIMARY KEY
ALTER TABLE `gm_tickets` CHANGE COLUMN `guid` `playerGuid` INTEGER NOT NULL
ALTER TABLE `gm_tickets` ADD COLUMN `guid` INTEGER NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`guid`)
ALTER TABLE `gm_tickets` MODIFY COLUMN `guid` INTEGER NOT NULL UNIQUE
-- Add new columns
ALTER TABLE `gm_tickets` ADD COLUMN `deleted` BIT NOT NULL DEFAULT 0
ALTER TABLE `gm_tickets` ADD COLUMN `assignedto` INTEGER NOT NULL DEFAULT 0;
ALTER TABLE `gm_tickets` ADD COLUMN `comment` TEXT NOT NULL DEFAULT '';