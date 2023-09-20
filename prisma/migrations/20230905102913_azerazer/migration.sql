-- DropIndex
DROP INDEX `Answer_questionId_fkey` ON `answer`;

-- AddForeignKey
ALTER TABLE `Answer` ADD CONSTRAINT `Answer_questionId_fkey` FOREIGN KEY (`questionId`) REFERENCES `Question`(`questionId`) ON DELETE RESTRICT ON UPDATE CASCADE;
