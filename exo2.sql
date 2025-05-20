CREATE TABLE `Products`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `category_id` BIGINT NOT NULL
);
CREATE TABLE `Tickets`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(255) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `shop_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL
);
CREATE TABLE `Shops`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `message` TEXT NOT NULL,
    `created_at` DATETIME NOT NULL
);
CREATE TABLE `Product_tickets`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` BIGINT NOT NULL,
    `ticket_id` BIGINT NOT NULL
);
CREATE TABLE `Users`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `fidelity_points` BIGINT NOT NULL
);
CREATE TABLE `Categories`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Products` ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY(`category_id`) REFERENCES `Categories`(`id`);
ALTER TABLE
    `Tickets` ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`);
ALTER TABLE
    `Tickets` ADD CONSTRAINT `tickets_shop_id_foreign` FOREIGN KEY(`shop_id`) REFERENCES `Shops`(`id`);
ALTER TABLE
    `Product_tickets` ADD CONSTRAINT `product_tickets_ticket_id_foreign` FOREIGN KEY(`ticket_id`) REFERENCES `Tickets`(`id`);
ALTER TABLE
    `Product_tickets` ADD CONSTRAINT `product_tickets_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `Products`(`id`);