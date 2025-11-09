CREATE TABLE IF NOT EXISTS `info` (
	`key` text NOT NULL,
	`value` text NOT NULL
);
--> statement-breakpoint
-->CREATE UNIQUE INDEX `info_key_unique` ON `info` (`key`);
--> 检查索引是否存在，如果不存在则创建
CREATE UNIQUE INDEX IF NOT EXISTS info_key_unique ON info(key);
--> statement-breakpoint
INSERT INTO `info` (`key`, `value`) VALUES ('migration_version', '2');