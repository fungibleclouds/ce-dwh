SELECT c.* FROM (SELECT *
FROM kalturadw_ds.cycles c
WHERE
(STATUS IN ('GENERATED','PROCESSED','LOADED') AND c.insert_time < NOW() - INTERVAL 1.5 DAY)
  OR 
 (STATUS IN ('GENERATING','REGISTERED') AND c.run_time < NOW() - INTERVAL 1.5 HOUR)
 OR 
 (STATUS = 'RUNNING' AND c.run_time < NOW() - INTERVAL 4.5 HOUR)
 OR 
 (STATUS = 'LOADING' AND c.run_time < NOW() - INTERVAL 3 HOUR)
 OR 
 (STATUS = 'TRANSFERING' AND c.transfer_time < NOW() - INTERVAL 3 HOUR)
 OR 
 STATUS NOT IN ('DONE', 'GENERATED', 'GENERATING', 'REGISTERED', 'PROCESSED', 'LOADED', 'RUNNING', 'LOADING','TRANSFERING', 'DELETED', 'SPOOF_CYCLE')) c,
 kalturadw_ds.files f
 WHERE c.cycle_id = f.cycle_id
;