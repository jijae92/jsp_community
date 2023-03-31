DROP DATABASE IF EXISTS jsp_community;
CREATE DATABASE jsp_community;

USE jsp_community;

CREATE TABLE article(
                        id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        regDate DATETIME NOT NULL,
                        updateDate DATETIME NOT NULL,
                        title CHAR(250) NOT NULL,
                        `body` LONGTEXT NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목3',
`body` = '내용3';

SELECT * FROM article;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = CONCAT('제목__', RAND()),
`body` = CONCAT('내용__', RAND());

INSERT INTO article(regDate, updateDate, title, `body`)
SELECT NOW(), NOW(), CONCAT('제목',RAND() ), CONCAT('내용',RAND())
FROM article;

SELECT COUNT(*) FROM article;

CREATE TABLE `member`(
                         id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         regDate DATETIME NOT NULL,
                         updateDate DATETIME NOT NULL,
                         loginId CHAR(100) NOT NULL UNIQUE,
                         loginPw CHAR(100) NOT NULL,
                         `name` CHAR(100) NOT NULL
);