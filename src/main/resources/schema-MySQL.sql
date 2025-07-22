DROP TABLE IF EXISTS `feedback`;
DROP TABLE IF EXISTS `question`;
DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `published` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `question` (
  `quiz_id` int NOT NULL,
  `ques_id` int NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `required` tinyint DEFAULT '0',
  `options` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`quiz_id`,`ques_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `feedback` (
  `user_name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `age` int DEFAULT '0',
  `quiz_id` int NOT NULL DEFAULT '0',
  `ques_id` int NOT NULL DEFAULT '0',
  `answer` varchar(500) DEFAULT NULL,
  `fillin_date` date DEFAULT NULL,
  PRIMARY KEY (`email`,`quiz_id`,`ques_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;