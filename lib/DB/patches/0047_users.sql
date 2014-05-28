ALTER TABLE users ADD COLUMN queuetype TINYINT(1) NOT NULL DEFAULT 0;
/* Add a column to pick between Sab and NZBGet. */

ALTER TABLE users ADD COLUMN nzbgeturl VARCHAR(255) NULL DEFAULT NULL;
/* Add a column for the NZBGet URL. */

ALTER TABLE users ADD COLUMN nzbgetusername VARCHAR(255) NULL DEFAULT NULL;
/* Add a column for the NZBGet username. */

ALTER TABLE users ADD COLUMN nzbgetpassword VARCHAR(255) NULL DEFAULT NULL;
/* Add a column for the NZBGet password. */

UPDATE `tmux` SET `value` = '47' WHERE `setting` = 'sqlpatch';