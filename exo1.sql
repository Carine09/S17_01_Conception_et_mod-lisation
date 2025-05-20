CREATE TABLE `Players`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` BIGINT NOT NULL,
    `lastname` BIGINT NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `country` VARCHAR(255) NOT NULL
);
CREATE TABLE `Levels`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `updated_at` DATE NOT NULL,
    `level_number` BIGINT NOT NULL
);
CREATE TABLE `Progress`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `player_id` BIGINT NOT NULL,
    `level_id` BIGINT NOT NULL
);
ALTER TABLE
    `Progress` ADD CONSTRAINT `progress_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `Players`(`id`);
ALTER TABLE
    `Progress` ADD CONSTRAINT `progress_level_id_foreign` FOREIGN KEY(`level_id`) REFERENCES `Levels`(`id`);