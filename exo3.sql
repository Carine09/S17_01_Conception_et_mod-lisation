CREATE TABLE `Patients`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone_number` CHAR(255) NOT NULL,
    `birthdate` DATE NOT NULL,
    `created_at` DATE NOT NULL,
    `updated_at` DATE NOT NULL
);
CREATE TABLE `Doctors`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `speciality` VARCHAR(255) NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `phone_number` CHAR(255) NOT NULL,
    `created_at` DATE NOT NULL,
    `updated_at` DATE NOT NULL
);
CREATE TABLE `Appoitments`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATETIME NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `patients_id` BIGINT NOT NULL,
    `doctors_id` BIGINT NOT NULL
);
CREATE TABLE `Crenaux`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `doctor_id` BIGINT NOT NULL,
    `date` DATETIME NOT NULL,
    `patient_id` BIGINT NOT NULL
);
ALTER TABLE
    `Appoitments` ADD CONSTRAINT `appoitments_patients_id_foreign` FOREIGN KEY(`patients_id`) REFERENCES `Patients`(`id`);
ALTER TABLE
    `Crenaux` ADD CONSTRAINT `crenaux_doctor_id_foreign` FOREIGN KEY(`doctor_id`) REFERENCES `Doctors`(`id`);
ALTER TABLE
    `Appoitments` ADD CONSTRAINT `appoitments_doctors_id_foreign` FOREIGN KEY(`doctors_id`) REFERENCES `Doctors`(`id`);
ALTER TABLE
    `Crenaux` ADD CONSTRAINT `crenaux_patient_id_foreign` FOREIGN KEY(`patient_id`) REFERENCES `Patients`(`id`);