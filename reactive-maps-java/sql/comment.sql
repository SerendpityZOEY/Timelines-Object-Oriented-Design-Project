CREATE TABLE `comment`(
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `userId` int(10) UNSIGNED NOT NULL,
    `postId` int(10) UNSIGNED NOT NULL,
    `content` varchar(1024) NOT NULL,
    `commentTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY key(id),
    CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);
