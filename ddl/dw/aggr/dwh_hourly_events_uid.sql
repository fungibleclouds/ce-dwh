USE `kalturadw`;

CREATE TABLE `dwh_hourly_events_uid` (
  `partner_id` INT(11) NOT NULL DEFAULT '0',
  `date_id` INT(11) NOT NULL DEFAULT '0',
  `hour_id` INT(11) NOT NULL DEFAULT '0',
  `kuser_id` VARCHAR(64) NOT NULL DEFAULT '0',
  `sum_time_viewed` DECIMAL(20,3) DEFAULT NULL,
  `count_time_viewed` INT(11) DEFAULT NULL,
  `count_plays` INT(11) DEFAULT NULL,
  `count_loads` INT(11) DEFAULT NULL,
  `count_plays_25` INT(11) DEFAULT NULL,
  `count_plays_50` INT(11) DEFAULT NULL,
  `count_plays_75` INT(11) DEFAULT NULL,
  `count_plays_100` INT(11) DEFAULT NULL,
  `count_edit` INT(11) DEFAULT NULL,
  `count_viral` INT(11) DEFAULT NULL,
  `count_download` INT(11) DEFAULT NULL,
  `count_report` INT(11) DEFAULT NULL,
  `count_buf_start` INT(11) DEFAULT NULL,
  `count_buf_end` INT(11) DEFAULT NULL,
  `count_open_full_screen` INT(11) DEFAULT NULL,
  `count_close_full_screen` INT(11) DEFAULT NULL,
  `count_replay` INT(11) DEFAULT NULL,
  `count_seek` INT(11) DEFAULT NULL,
  `count_open_upload` INT(11) DEFAULT NULL,
  `count_save_publish` INT(11) DEFAULT NULL,
  `count_close_editor` INT(11) DEFAULT NULL,
  `count_pre_bumper_played` INT(11) DEFAULT NULL,
  `count_post_bumper_played` INT(11) DEFAULT NULL,
  `count_bumper_clicked` INT(11) DEFAULT NULL,
  `count_preroll_started` INT(11) DEFAULT NULL,
  `count_midroll_started` INT(11) DEFAULT NULL,
  `count_postroll_started` INT(11) DEFAULT NULL,
  `count_overlay_started` INT(11) DEFAULT NULL,
  `count_preroll_clicked` INT(11) DEFAULT NULL,
  `count_midroll_clicked` INT(11) DEFAULT NULL,
  `count_postroll_clicked` INT(11) DEFAULT NULL,
  `count_overlay_clicked` INT(11) DEFAULT NULL,
  `count_preroll_25` INT(11) DEFAULT NULL,
  `count_preroll_50` INT(11) DEFAULT NULL,
  `count_preroll_75` INT(11) DEFAULT NULL,
  `count_midroll_25` INT(11) DEFAULT NULL,
  `count_midroll_50` INT(11) DEFAULT NULL,
  `count_midroll_75` INT(11) DEFAULT NULL,
  `count_postroll_25` INT(11) DEFAULT NULL,
  `count_postroll_50` INT(11) DEFAULT NULL,
  `count_postroll_75` INT(11) DEFAULT NULL,
  PRIMARY KEY (`partner_id`,`date_id`,`hour_id`,`kuser_id`),
  KEY (`date_id`, `hour_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8
PARTITION BY RANGE (date_id)
(PARTITION p_201001 VALUES LESS THAN (20100201) ENGINE = INNODB,
 PARTITION p_201002 VALUES LESS THAN (20100301) ENGINE = INNODB,
 PARTITION p_201003 VALUES LESS THAN (20100401) ENGINE = INNODB,
 PARTITION p_201004 VALUES LESS THAN (20100501) ENGINE = INNODB,
 PARTITION p_201005 VALUES LESS THAN (20100601) ENGINE = INNODB,
 PARTITION p_201006 VALUES LESS THAN (20100701) ENGINE = INNODB,
 PARTITION p_201007 VALUES LESS THAN (20100801) ENGINE = INNODB,
 PARTITION p_201008 VALUES LESS THAN (20100901) ENGINE = INNODB,
 PARTITION p_201009 VALUES LESS THAN (20101001) ENGINE = INNODB,
 PARTITION p_201010 VALUES LESS THAN (20101101) ENGINE = INNODB,
 PARTITION p_201011 VALUES LESS THAN (20101201) ENGINE = INNODB);
