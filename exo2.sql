CREATE TABLE `Products`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `price` FLOAT(53) NOT NULL
);
CREATE TABLE `Tickets`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(255) NOT NULL,
    `total` FLOAT(53) NOT NULL,
    `lines_number` BIGINT NOT NULL,
    `fidelity_account` BIGINT NOT NULL,
    `shops_id` BIGINT NOT NULL
);
CREATE TABLE `Shops`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL
);
CREATE TABLE `Stocks`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `products_id` BIGINT NOT NULL,
    `shops_id` BIGINT NOT NULL
);
CREATE TABLE `Orders`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `products_id` BIGINT NOT NULL,
    `tickets_id` BIGINT NOT NULL
);
ALTER TABLE
    `Stocks` ADD CONSTRAINT `stocks_shops_id_foreign` FOREIGN KEY(`shops_id`) REFERENCES `Shops`(`id`);
ALTER TABLE
    `Tickets` ADD CONSTRAINT `tickets_shops_id_foreign` FOREIGN KEY(`shops_id`) REFERENCES `Shops`(`id`);
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_tickets_id_foreign` FOREIGN KEY(`tickets_id`) REFERENCES `Tickets`(`id`);
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_products_id_foreign` FOREIGN KEY(`products_id`) REFERENCES `Products`(`id`);
ALTER TABLE
    `Stocks` ADD CONSTRAINT `stocks_products_id_foreign` FOREIGN KEY(`products_id`) REFERENCES `Products`(`id`);
