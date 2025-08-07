CREATE TABLE `render` (
  `app_id` varchar(255) NOT NULL,
  `period_start` varchar(255) NOT NULL,
  `period_end` varchar(255) NOT NULL,
  `tag_id` varchar(255) NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `report_id` varchar(255) NOT NULL,
  `render_id` varchar(255) NOT NULL,
  PRIMARY KEY (`app_id`, `period_start`, `period_end`, `tag_id`, `report_id`, `event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- A table for managing locks to prevent race conditions
CREATE TABLE `render_locks` (
  `app_id` varchar(255) NOT NULL,
  `report_id` varchar(255) NOT NULL,
  `tag_id` varchar(255) NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_id`, `report_id`, `tag_id`, `event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;