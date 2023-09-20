-- CreateTable
CREATE TABLE `Question` (
    `questionId` INTEGER NOT NULL AUTO_INCREMENT,
    `question` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NOT NULL,
    `category` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `username` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`questionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Answer` (
    `answerId` INTEGER NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `questionId` INTEGER NOT NULL,
    `avatar` VARCHAR(191) NOT NULL,
    `username` VARCHAR(255) NOT NULL,
    `voter` INTEGER NOT NULL DEFAULT 0,
    `devoter` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`answerId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Answer` ADD CONSTRAINT `Answer_questionId_fkey` FOREIGN KEY (`questionId`) REFERENCES `Question`(`questionId`) ON DELETE RESTRICT ON UPDATE CASCADE;
