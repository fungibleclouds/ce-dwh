/*
/*
SQLyog Community Edition- MySQL GUI
MySQL - 5.1.34-community 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

CREATE TABLE kalturadw.`ri_mapping` (
	`table_name` VARCHAR (300),
	`column_name` VARCHAR (300),
	`date_id_column_name` VARCHAR (300),
	`date_column_name` VARCHAR(50),
	`reference_table` VARCHAR (300),
	`reference_column` VARCHAR (300),
	`perform_check` TINYINT (1),
	UNIQUE KEY `table_name` (`table_name`,`column_name`)
) CHARSET='latin1';

INSERT INTO kalturadw.`ri_mapping` (`table_name`, `column_name`, `date_id_column_name`, `date_column_name`, `reference_table`, `reference_column`, `perform_check`) 
	VALUES
	('dwh_dim_kusers','partner_id', '', 'dwh_update_date', 'dwh_dim_partners','partner_id','1'),
	('dwh_dim_ui_conf','partner_id', '', 'dwh_update_date','dwh_dim_partners','partner_id','1'),
	('dwh_dim_widget','source_widget_id', '', 'dwh_update_date','dwh_dim_widget','widget_id','1'),
	('dwh_dim_widget','root_widget_id', '', 'dwh_update_date','dwh_dim_widget','widget_id','1'),
	('dwh_dim_widget','partner_id', '', 'dwh_update_date','dwh_dim_partners','partner_id','1'),
	('dwh_dim_widget','entry_id', '', 'dwh_update_date','dwh_dim_entries','entry_id','1'),
	('dwh_dim_widget','ui_conf_id', '', 'dwh_update_date','dwh_dim_ui_conf','ui_conf_id','1'),
	('dwh_dim_entries','kuser_id', '', 'dwh_update_date','dwh_dim_kusers','kuser_id','1'),
	('dwh_dim_entries','partner_id', '', 'dwh_update_date','dwh_dim_partners','partner_id','1'),
	('dwh_dim_partners', 'partner_parent_id',  '', 'dwh_update_date', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_fact_events','event_type_id', 'event_date_id', '', 'dwh_dim_event_type','event_type_id','0'),
	('dwh_dim_file_sync', 'partner_id',  '', 'dwh_update_date','dwh_dim_partners','partner_id',1),
	('dwh_dim_flavor_asset', 'entry_id',  '', 'dwh_update_date','dwh_dim_entries','entry_id',1),
	('dwh_dim_flavor_asset', 'partner_id',  '', 'dwh_update_date','dwh_dim_partners','partner_id',1),
	('dwh_dim_flavor_asset', 'flavor_params_id',  '', 'dwh_update_date','dwh_dim_flavor_params','id',1),
	('dwh_dim_flavor_params', 'partner_id',  '', 'dwh_update_date','dwh_dim_partners','partner_id',1),
	('dwh_dim_conversion_profile', 'partner_id',  '', 'dwh_update_date','dwh_dim_partners','partner_id',1),
	('dwh_dim_flavor_params_conversion_profile', 'conversion_profile_id',  '', 'dwh_update_date','dwh_dim_conversion_profile','id',1),
	('dwh_dim_flavor_params_conversion_profile', 'flavor_params_id',  '', 'dwh_update_date','dwh_dim_flavor_params','id',1),
	('dwh_dim_flavor_params_output', 'entry_id',  '', 'dwh_update_date','dwh_dim_entries','entry_id',1),
	('dwh_dim_flavor_params_output', 'flavor_asset_id',  '', 'dwh_update_date','dwh_dim_flavor_asset','id',1),
	('dwh_dim_media_info', 'flavor_asset_id',  '', 'dwh_update_date','dwh_dim_flavor_asset','id',1),
	('dwh_dim_batch_job', 'partner_id',  '', 'dwh_update_date','dwh_dim_partners','partner_id',1),
	('dwh_hourly_partner', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_partner_usage', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_entry', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_entry', 'entry_id', 'date_id', '', 'dwh_dim_entries', 'entry_id', '1'),
	('dwh_hourly_events_domain', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_domain', 'domain_id', 'date_id', '', 'dwh_dim_domain', 'domain_id', '1'),
	('dwh_hourly_events_domain_referrer', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_domain_referrer', 'domain_id', 'date_id', '', 'dwh_dim_domain', 'domain_id', '1'),
	('dwh_hourly_events_domain_referrer', 'referrer_id', 'date_id', '', 'dwh_dwh_referrer', 'referrer_id', '1'),
	('dwh_dim_locations', 'country_id', '', 'dwh_update_date', 'dwh_dim_locations', 'location_id', '1'),
	('dwh_dim_locations', 'state_id', '', 'dwh_update_date', 'dwh_dim_locations', 'location_id', '1'),
	('dwh_hourly_events_country', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_country', 'country_id', 'date_id', '', 'dwh_dim_locations', 'location_id', '1'),
	('dwh_hourly_events_country', 'location_id', 'date_id', '', 'dwh_dim_locations', 'location_id', '1'),
	('dwh_hourly_events_uid', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_uid', 'kuser_id', 'date_id', '', 'dwh_dim_kusers', 'kuser_id', '1'),
	('dwh_hourly_events_widget', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1'),
	('dwh_hourly_events_widget', 'widget_id', 'date_id', '', 'dwh_dim_widget', 'widget_id', '1'),
	('dwh_hourly_events_devices', 'ui_conf_id', 'date_id', '', 'dwh_dim_ui_conf', 'ui_conf_id', '1'),
	('dwh_hourly_errors', 'partner_id', 'date_id', '', 'dwh_dim_partners', 'partner_id', '1');

