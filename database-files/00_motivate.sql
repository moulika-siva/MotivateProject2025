SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `motivate` ;
CREATE SCHEMA IF NOT EXISTS `motivate` DEFAULT CHARACTER SET latin1 ;
USE `motivate` ;

-- -----------------------------------------------------
-- Table `motivate`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `role` ENUM('Student', 'Professor', 'SystemAdmin', 'Parent') DEFAULT NULL,
  `email_address` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `professors` (
  `user_id` INT NOT NULL,
  `department` VARCHAR(50) DEFAULT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);

-- -----------------------------------------------------
-- Table `motivate`.`system_admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `system_admins` (
  `user_id` INT NOT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`parents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parents` (
  `user_id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `occupation` VARCHAR(100) DEFAULT NULL,
  `age` INT DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `semester` VARCHAR(20) DEFAULT NULL,
  `priority` INT DEFAULT NULL,
  PRIMARY KEY (`course_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `course_id` INT,
  `name` VARCHAR(100) NOT NULL,
  `user_id` INT,
  PRIMARY KEY (`student_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`),
  FOREIGN KEY (`course_id`) REFERENCES `courses`(`course_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`assignments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignments` (
  `assign_id` INT NOT NULL AUTO_INCREMENT,
  `course_id` INT,
  `description` TEXT DEFAULT NULL,
  `due_date` DATE DEFAULT NULL,
  PRIMARY KEY (`assign_id`),
  FOREIGN KEY (`course_id`) REFERENCES `courses`(`course_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`calendar_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `calendar_event_id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(200) DEFAULT NULL,
  `date_time` DATETIME DEFAULT NULL,
  `type` ENUM('Class', 'Club', 'Personal') DEFAULT NULL,
  `user_id` INT,
  PRIMARY KEY (`calendar_event_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);

-- -----------------------------------------------------
-- Table `motivate`.`club_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `club_events` (
  `club_event_id` INT NOT NULL,
  `name` VARCHAR(100) DEFAULT NULL,
  `location` VARCHAR(100) DEFAULT NULL,
  `date` DATE DEFAULT NULL,
  PRIMARY KEY (`club_event_id`),
  FOREIGN KEY (`club_event_id`) REFERENCES `calendar_events`(`calendar_event_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`pre_med_requirements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pre_med_requirements` (
  `req_id` INT NOT NULL AUTO_INCREMENT,
  `student_id` INT,
  `description` VARCHAR(200) DEFAULT NULL,
  `status` ENUM('NotStarted', 'InProgress', 'Completed') DEFAULT NULL,
  `target_date` DATE DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`mcat_chapters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mcat_chapters` (
  `chapter_id` INT NOT NULL AUTO_INCREMENT,
  `student_id` INT,
  `topic` VARCHAR(100) DEFAULT NULL,
  `status` ENUM('NotStarted', 'InProgress', 'Completed') DEFAULT NULL,
  `last_reviewed` DATE DEFAULT NULL,
  PRIMARY KEY (`chapter_id`),
  FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`lesson_plans`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lesson_plans` (
  `plan_id` INT NOT NULL AUTO_INCREMENT,
  `course_id` INT,
  `professor_id` INT,
  `date` DATE DEFAULT NULL,
  `content` TEXT DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  FOREIGN KEY (`course_id`) REFERENCES `courses`(`course_id`),
  FOREIGN KEY (`professor_id`) REFERENCES `professors`(`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`exams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exams` (
  `exam_id` INT NOT NULL AUTO_INCREMENT,
  `course_id` INT,
  `date` DATE DEFAULT NULL,
  `type` ENUM('Midterm', 'Final', 'Quiz') DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  FOREIGN KEY (`course_id`) REFERENCES `courses`(`course_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`system_commands`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `system_commands` (
  `system_id` INT NOT NULL AUTO_INCREMENT,
  `version` VARCHAR(20) DEFAULT NULL,
  `status` ENUM('Active', 'Maintenance') DEFAULT 'Active',
  `last_updated` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`system_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `created_at` DATE DEFAULT NULL,
  `data` TEXT DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`cache_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cache_data` (
  `cache_id` INT NOT NULL AUTO_INCREMENT,
  `system_id` INT NOT NULL,
  `date` DATE DEFAULT NULL,
  `data_type` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`cache_id`),
  FOREIGN KEY (`system_id`) REFERENCES `system_commands`(`system_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`system_update`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `system_update` (
  `update_id` INT NOT NULL,
  `type` VARCHAR(50) DEFAULT NULL,
  `release_date` DATE DEFAULT NULL,
  PRIMARY KEY (`update_id`),
  FOREIGN KEY (`update_id`) REFERENCES `system_commands`(`system_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`issues`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `issues` (
  `issue_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE DEFAULT NULL,
  `type` VARCHAR(50) DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) DEFAULT NULL,
  `date` DATE DEFAULT NULL,
  `status` ENUM('Open', 'InProgress', 'Resolved') DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`todo_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `todo_list` (
  `list_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `title` VARCHAR(100) NOT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`list_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);

-- -----------------------------------------------------
-- Table `motivate`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` INT NOT NULL AUTO_INCREMENT,
  `list_id` INT,
  `description` VARCHAR(200) DEFAULT NULL,
  `due_date` DATE DEFAULT NULL,
  `frequency` ENUM('Pending', 'Completed') DEFAULT 'Pending',
  PRIMARY KEY (`task_id`),
  FOREIGN KEY (`list_id`) REFERENCES `todo_list`(`list_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`grocery_lists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocery_lists` (
  `list_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `title` VARCHAR(100) NOT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`list_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);


-- -----------------------------------------------------
-- Table `motivate`.`grocery_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocery_items` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `list_id` INT,
  `name` VARCHAR(100) DEFAULT NULL,
  `quantity` INT DEFAULT NULL,
  `purchase_status` ENUM('Pending', 'Purchased') DEFAULT 'Pending',
  PRIMARY KEY (`item_id`),
  FOREIGN KEY (`list_id`) REFERENCES `grocery_lists`(`list_id`)
);

-- -----------------------------------------------------
-- Table `motivate`.`sleep_logs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sleep_logs` (
  `sleep_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `start_time` TIMESTAMP NULL DEFAULT NULL,
  `end_time` TIMESTAMP NULL DEFAULT NULL,
  `baby_name` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`sleep_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
