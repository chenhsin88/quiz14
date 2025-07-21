DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS quiz;

CREATE TABLE quiz (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45),
  description VARCHAR(500),
  start_date DATE,
  end_date DATE,
  published TINYINT
);

CREATE TABLE question (
  quiz_id INT NOT NULL,
  ques_id INT NOT NULL,
  question VARCHAR(100),
  type VARCHAR(45),
  required TINYINT DEFAULT 0,
  options VARCHAR(500),
  PRIMARY KEY (quiz_id, ques_id)
);

CREATE TABLE feedback (
  user_name VARCHAR(20),
  phone VARCHAR(15),
  email VARCHAR(45) NOT NULL,
  age INT DEFAULT 0,
  quiz_id INT NOT NULL DEFAULT 0,
  ques_id INT NOT NULL DEFAULT 0,
  answer VARCHAR(500),
  fillin_date DATE,
  PRIMARY KEY (email, quiz_id, ques_id)
);
