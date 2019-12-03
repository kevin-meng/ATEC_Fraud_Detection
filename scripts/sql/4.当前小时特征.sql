-- ##############################
-- 当前小时特征
-- ##############################

CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_event_id_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_event_id_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_event_id_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_event_id_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_event_id_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_event_id_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_event_id_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_event_id_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_event_id_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_event_id_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_event_id_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_event_id_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_event_id_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_event_id_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_event_id_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_event_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT event_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_user_id_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_user_id_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_user_id_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_user_id_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_user_id_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_user_id_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_user_id_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_user_id_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_user_id_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_user_id_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_user_id_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_user_id_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_user_id_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_user_id_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_user_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT user_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_client_ip_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_client_ip_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_client_ip_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_client_ip_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_client_ip_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_client_ip_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_client_ip_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_client_ip_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_client_ip_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_client_ip_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_client_ip_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_client_ip_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_client_ip_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_client_ip_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_client_ip_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT client_ip) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_network_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_network_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_network_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_network_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_network_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_network_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_network_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_network_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_network_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_network_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_network_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_network_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_network_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_network_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_network_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT network) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_device_sign_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_device_sign_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_device_sign_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_device_sign_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_device_sign_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_device_sign_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_device_sign_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_device_sign_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_device_sign_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_device_sign_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_device_sign_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_device_sign_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_device_sign_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_device_sign_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_device_sign_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT device_sign) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_info_1_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_info_1_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_info_1_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_info_1_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_info_1_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_info_1_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_info_1_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_info_1_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_info_1_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_info_1_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_info_1_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_info_1_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_info_1_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_info_1_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_info_1_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT info_1) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_info_2_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_info_2_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_info_2_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_info_2_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_info_2_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_info_2_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_info_2_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_info_2_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_info_2_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_info_2_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_info_2_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_info_2_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_info_2_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_info_2_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_info_2_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT info_2) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_ip_prov_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_ip_prov_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT ip_prov) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_ip_city_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_ip_city_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_ip_city_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_ip_city_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_ip_city_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_ip_city_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_ip_city_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_ip_city_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_ip_city_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_ip_city_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_ip_city_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_ip_city_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_ip_city_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_ip_city_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_ip_city_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT ip_city) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_mobile_oper_platform_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_mobile_oper_platform_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT mobile_oper_platform) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_version_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_version_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_version_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_version_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_version_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_version_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_version_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_version_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_version_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_version_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_version_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_version_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_version_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_version_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_version_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT version) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_mobile_oper_platform_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_operation_channel_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_operation_channel_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT operation_channel) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_pay_scene_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_pay_scene_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT pay_scene) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_amt_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_amt_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_amt_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_amt_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_amt_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_amt_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_amt_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_amt_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_amt_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt)  AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_amt_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_amt_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num    AS prec_operation_channel_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_amt_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_amt_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_amt_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_amt_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT amt) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_gmt_datetime_by_opposing_id_count AS
  SELECT v.event_id 
       ,s.gmt_datetime 
       --   ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_gmt_datetime_by_opposing_id_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT gmt_datetime 
                        --  ,gmt_datetime 
                        ,COUNT(DISTINCT opposing_id) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND gmt_datetime IS NOT NULL 
                  GROUP BY gmt_datetime 
                 --  ,gmt_datetime 
                 )s 
     ON v.gmt_datetime = s.gmt_datetime 
--   AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_user_id_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.user_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_user_id_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT user_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                  GROUP BY user_id 
                          ,gmt_datetime 
                 )s 
     ON v.user_id = s.user_id 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_client_ip_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.client_ip 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_client_ip_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT client_ip 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND client_ip IS NOT NULL 
                  GROUP BY client_ip 
                          ,gmt_datetime 
                 )s 
     ON v.client_ip = s.client_ip 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_network_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.network 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_network_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT network 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND network IS NOT NULL 
                  GROUP BY network 
                          ,gmt_datetime 
                 )s 
     ON v.network = s.network 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_device_sign_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.device_sign 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_device_sign_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT device_sign 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND device_sign IS NOT NULL 
                  GROUP BY device_sign 
                          ,gmt_datetime 
                 )s 
     ON v.device_sign = s.device_sign 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_1_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.info_1 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_1_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_1 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_1 IS NOT NULL 
                  GROUP BY info_1 
                          ,gmt_datetime 
                 )s 
     ON v.info_1 = s.info_1 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_info_2_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.info_2 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_info_2_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT info_2 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND info_2 IS NOT NULL 
                  GROUP BY info_2 
                          ,gmt_datetime 
                 )s 
     ON v.info_2 = s.info_2 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_prov_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.ip_prov 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_prov_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_prov 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_prov IS NOT NULL 
                  GROUP BY ip_prov 
                          ,gmt_datetime 
                 )s 
     ON v.ip_prov = s.ip_prov 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_ip_city_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.ip_city 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_ip_city_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT ip_city 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND ip_city IS NOT NULL 
                  GROUP BY ip_city 
                          ,gmt_datetime 
                 )s 
     ON v.ip_city = s.ip_city 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_mobile_oper_platform_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.mobile_oper_platform 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num       AS prec_mobile_oper_platform_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT mobile_oper_platform 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND mobile_oper_platform IS NOT NULL 
                  GROUP BY mobile_oper_platform 
                          ,gmt_datetime 
                 )s 
     ON v.mobile_oper_platform = s.mobile_oper_platform 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_version_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.version 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_version_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT version 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND version IS NOT NULL 
                  GROUP BY version 
                          ,gmt_datetime 
                 )s 
     ON v.version = s.version 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_operation_channel_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.operation_channel 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_operation_channel_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT operation_channel 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND operation_channel IS NOT NULL 
                  GROUP BY operation_channel 
                          ,gmt_datetime 
                 )s 
     ON v.operation_channel = s.operation_channel 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_pay_scene_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.pay_scene 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_pay_scene_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT pay_scene 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND pay_scene IS NOT NULL 
                  GROUP BY pay_scene 
                          ,gmt_datetime 
                 )s 
     ON v.pay_scene = s.pay_scene 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_amt_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.amt 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_amt_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT amt 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND amt IS NOT NULL 
                  GROUP BY amt 
                          ,gmt_datetime 
                 )s 
     ON v.amt = s.amt 
    AND v.gmt_datetime = s.gmt_datetime
;


CREATE TABLE IF NOT EXISTS kevin_new_prec_opposing_id_by_gmt_datetime_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_gmt_1h_num AS prec_opposing_id_by_gmt_datetime_count 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(DISTINCT gmt_datetime) AS win_gmt_1h_num 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;

CREATE TABLE IF NOT EXISTS kevin_prec_feature_b1_0828_p1 AS
  SELECT s1.event_id 
       ,s1.prec_user_id_by_event_id_count 
       ,s2.prec_client_ip_by_event_id_count 
       ,s3.prec_network_by_event_id_count 
       ,s4.prec_device_sign_by_event_id_count 
       ,s5.prec_info_1_by_event_id_count 
       ,s6.prec_info_2_by_event_id_count 
       ,s7.prec_ip_prov_by_event_id_count 
       ,s8.prec_ip_city_by_event_id_count 
       ,s9.prec_mobile_oper_platform_by_event_id_count 
       ,s10.prec_version_by_event_id_count 
       ,s11.prec_operation_channel_by_event_id_count 
       ,s12.prec_pay_scene_by_event_id_count 
       ,s13.prec_amt_by_event_id_count 
       ,s14.prec_opposing_id_by_event_id_count 
       ,s15.prec_gmt_datetime_by_event_id_count 
       ,s16.prec_client_ip_by_user_id_count 
       ,s17.prec_network_by_user_id_count 
       ,s18.prec_device_sign_by_user_id_count 
       ,s19.prec_info_1_by_user_id_count 
       ,s20.prec_info_2_by_user_id_count 
       ,s21.prec_ip_prov_by_user_id_count 
       ,s22.prec_ip_city_by_user_id_count 
       ,s23.prec_mobile_oper_platform_by_user_id_count 
       ,s24.prec_version_by_user_id_count 
       ,s25.prec_operation_channel_by_user_id_count 
       ,s26.prec_pay_scene_by_user_id_count 
       ,s27.prec_amt_by_user_id_count 
       ,s28.prec_opposing_id_by_user_id_count 
       ,s29.prec_gmt_datetime_by_user_id_count 
       ,s30.prec_user_id_by_client_ip_count 
       ,s31.prec_network_by_client_ip_count 
       ,s32.prec_device_sign_by_client_ip_count 
       ,s33.prec_info_1_by_client_ip_count 
       ,s34.prec_info_2_by_client_ip_count 
       ,s35.prec_ip_prov_by_client_ip_count 
       ,s36.prec_ip_city_by_client_ip_count 
       ,s37.prec_mobile_oper_platform_by_client_ip_count 
       ,s38.prec_version_by_client_ip_count 
       ,s39.prec_operation_channel_by_client_ip_count 
       ,s40.prec_pay_scene_by_client_ip_count 
       ,s41.prec_amt_by_client_ip_count 
       ,s42.prec_opposing_id_by_client_ip_count 
       ,s43.prec_gmt_datetime_by_client_ip_count 
       ,s44.prec_user_id_by_network_count 
       ,s45.prec_client_ip_by_network_count 
       ,s46.prec_device_sign_by_network_count 
       ,s47.prec_info_1_by_network_count 
       ,s48.prec_info_2_by_network_count 
       ,s49.prec_ip_prov_by_network_count 
       ,s50.prec_ip_city_by_network_count 
   FROM kevin_newb1_prec_user_id_by_event_id_count s1 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_event_id_count s2 
     ON s1.event_id = s2.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_event_id_count s3 
     ON s1.event_id = s3.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_event_id_count s4 
     ON s1.event_id = s4.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_event_id_count s5 
     ON s1.event_id = s5.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_event_id_count s6 
     ON s1.event_id = s6.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_event_id_count s7 
     ON s1.event_id = s7.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_event_id_count s8 
     ON s1.event_id = s8.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_event_id_count s9 
     ON s1.event_id = s9.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_event_id_count s10 
     ON s1.event_id = s10.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_event_id_count s11 
     ON s1.event_id = s11.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_event_id_count s12 
     ON s1.event_id = s12.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_event_id_count s13 
     ON s1.event_id = s13.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_event_id_count s14 
     ON s1.event_id = s14.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_event_id_count s15 
     ON s1.event_id = s15.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_user_id_count s16 
     ON s1.event_id = s16.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_user_id_count s17 
     ON s1.event_id = s17.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_user_id_count s18 
     ON s1.event_id = s18.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_user_id_count s19 
     ON s1.event_id = s19.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_user_id_count s20 
     ON s1.event_id = s20.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_user_id_count s21 
     ON s1.event_id = s21.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_user_id_count s22 
     ON s1.event_id = s22.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_user_id_count s23 
     ON s1.event_id = s23.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_user_id_count s24 
     ON s1.event_id = s24.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_user_id_count s25 
     ON s1.event_id = s25.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_user_id_count s26 
     ON s1.event_id = s26.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_user_id_count s27 
     ON s1.event_id = s27.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_user_id_count s28 
     ON s1.event_id = s28.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_user_id_count s29 
     ON s1.event_id = s29.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_client_ip_count s30 
     ON s1.event_id = s30.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_client_ip_count s31 
     ON s1.event_id = s31.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_client_ip_count s32 
     ON s1.event_id = s32.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_client_ip_count s33 
     ON s1.event_id = s33.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_client_ip_count s34 
     ON s1.event_id = s34.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_client_ip_count s35 
     ON s1.event_id = s35.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_client_ip_count s36 
     ON s1.event_id = s36.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_client_ip_count s37 
     ON s1.event_id = s37.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_client_ip_count s38 
     ON s1.event_id = s38.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_client_ip_count s39 
     ON s1.event_id = s39.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_client_ip_count s40 
     ON s1.event_id = s40.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_client_ip_count s41 
     ON s1.event_id = s41.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_client_ip_count s42 
     ON s1.event_id = s42.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_client_ip_count s43 
     ON s1.event_id = s43.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_network_count s44 
     ON s1.event_id = s44.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_network_count s45 
     ON s1.event_id = s45.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_network_count s46 
     ON s1.event_id = s46.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_network_count s47 
     ON s1.event_id = s47.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_network_count s48 
     ON s1.event_id = s48.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_network_count s49 
     ON s1.event_id = s49.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_network_count s50 
     ON s1.event_id = s50.event_id 
;



CREATE TABLE IF NOT EXISTS kevin_prec_feature_b1_0828_p2 AS
  SELECT s1.event_id 
       ,s51.prec_mobile_oper_platform_by_network_count 
       ,s52.prec_version_by_network_count 
       ,s53.prec_operation_channel_by_network_count 
       ,s54.prec_pay_scene_by_network_count 
       ,s55.prec_amt_by_network_count 
       ,s56.prec_opposing_id_by_network_count 
       ,s57.prec_gmt_datetime_by_network_count 
       ,s58.prec_user_id_by_device_sign_count 
       ,s59.prec_client_ip_by_device_sign_count 
       ,s60.prec_network_by_device_sign_count 
       ,s61.prec_info_1_by_device_sign_count 
       ,s62.prec_info_2_by_device_sign_count 
       ,s63.prec_ip_prov_by_device_sign_count 
       ,s64.prec_ip_city_by_device_sign_count 
       ,s65.prec_mobile_oper_platform_by_device_sign_count 
       ,s66.prec_version_by_device_sign_count 
       ,s67.prec_operation_channel_by_device_sign_count 
       ,s68.prec_pay_scene_by_device_sign_count 
       ,s69.prec_amt_by_device_sign_count 
       ,s70.prec_opposing_id_by_device_sign_count 
       ,s71.prec_gmt_datetime_by_device_sign_count 
       ,s72.prec_user_id_by_info_1_count 
       ,s73.prec_client_ip_by_info_1_count 
       ,s74.prec_network_by_info_1_count 
       ,s75.prec_device_sign_by_info_1_count 
       ,s76.prec_info_2_by_info_1_count 
       ,s77.prec_ip_prov_by_info_1_count 
       ,s78.prec_ip_city_by_info_1_count 
       ,s79.prec_mobile_oper_platform_by_info_1_count 
       ,s80.prec_version_by_info_1_count 
       ,s81.prec_operation_channel_by_info_1_count 
       ,s82.prec_pay_scene_by_info_1_count 
       ,s83.prec_amt_by_info_1_count 
       ,s84.prec_opposing_id_by_info_1_count 
       ,s85.prec_gmt_datetime_by_info_1_count 
       ,s86.prec_user_id_by_info_2_count 
       ,s87.prec_client_ip_by_info_2_count 
       ,s88.prec_network_by_info_2_count 
       ,s89.prec_device_sign_by_info_2_count 
       ,s90.prec_info_1_by_info_2_count 
       ,s91.prec_ip_prov_by_info_2_count 
       ,s92.prec_ip_city_by_info_2_count 
       ,s93.prec_mobile_oper_platform_by_info_2_count 
       ,s94.prec_version_by_info_2_count 
       ,s95.prec_operation_channel_by_info_2_count 
       ,s96.prec_pay_scene_by_info_2_count 
       ,s97.prec_amt_by_info_2_count 
       ,s98.prec_opposing_id_by_info_2_count 
       ,s99.prec_gmt_datetime_by_info_2_count 
       ,s100.prec_user_id_by_ip_prov_count 
   FROM kevin_newb1_prec_user_id_by_event_id_count s1 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_network_count s51 
     ON s1.event_id = s51.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_network_count s52 
     ON s1.event_id = s52.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_network_count s53 
     ON s1.event_id = s53.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_network_count s54 
     ON s1.event_id = s54.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_network_count s55 
     ON s1.event_id = s55.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_network_count s56 
     ON s1.event_id = s56.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_network_count s57 
     ON s1.event_id = s57.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_device_sign_count s58 
     ON s1.event_id = s58.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_device_sign_count s59 
     ON s1.event_id = s59.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_device_sign_count s60 
     ON s1.event_id = s60.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_device_sign_count s61 
     ON s1.event_id = s61.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_device_sign_count s62 
     ON s1.event_id = s62.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_device_sign_count s63 
     ON s1.event_id = s63.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_device_sign_count s64 
     ON s1.event_id = s64.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_device_sign_count s65 
     ON s1.event_id = s65.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_device_sign_count s66 
     ON s1.event_id = s66.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_device_sign_count s67 
     ON s1.event_id = s67.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_device_sign_count s68 
     ON s1.event_id = s68.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_device_sign_count s69 
     ON s1.event_id = s69.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_device_sign_count s70 
     ON s1.event_id = s70.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_device_sign_count s71 
     ON s1.event_id = s71.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_info_1_count s72 
     ON s1.event_id = s72.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_info_1_count s73 
     ON s1.event_id = s73.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_info_1_count s74 
     ON s1.event_id = s74.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_info_1_count s75 
     ON s1.event_id = s75.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_info_1_count s76 
     ON s1.event_id = s76.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_info_1_count s77 
     ON s1.event_id = s77.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_info_1_count s78 
     ON s1.event_id = s78.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_info_1_count s79 
     ON s1.event_id = s79.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_info_1_count s80 
     ON s1.event_id = s80.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_info_1_count s81 
     ON s1.event_id = s81.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_info_1_count s82 
     ON s1.event_id = s82.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_info_1_count s83 
     ON s1.event_id = s83.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_info_1_count s84 
     ON s1.event_id = s84.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_info_1_count s85 
     ON s1.event_id = s85.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_info_2_count s86 
     ON s1.event_id = s86.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_info_2_count s87 
     ON s1.event_id = s87.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_info_2_count s88 
     ON s1.event_id = s88.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_info_2_count s89 
     ON s1.event_id = s89.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_info_2_count s90 
     ON s1.event_id = s90.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_info_2_count s91 
     ON s1.event_id = s91.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_info_2_count s92 
     ON s1.event_id = s92.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_info_2_count s93 
     ON s1.event_id = s93.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_info_2_count s94 
     ON s1.event_id = s94.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_info_2_count s95 
     ON s1.event_id = s95.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_info_2_count s96 
     ON s1.event_id = s96.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_info_2_count s97 
     ON s1.event_id = s97.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_info_2_count s98 
     ON s1.event_id = s98.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_info_2_count s99 
     ON s1.event_id = s99.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_ip_prov_count s100 
     ON s1.event_id = s100.event_id 
;

CREATE TABLE IF NOT EXISTS kevin_prec_feature_b1_0828_p3 AS
  SELECT s1.event_id 
       ,s101.prec_client_ip_by_ip_prov_count 
       ,s102.prec_network_by_ip_prov_count 
       ,s103.prec_device_sign_by_ip_prov_count 
       ,s104.prec_info_1_by_ip_prov_count 
       ,s105.prec_info_2_by_ip_prov_count 
       ,s106.prec_ip_city_by_ip_prov_count 
       ,s107.prec_mobile_oper_platform_by_ip_prov_count 
       ,s108.prec_version_by_ip_prov_count 
       ,s109.prec_operation_channel_by_ip_prov_count 
       ,s110.prec_pay_scene_by_ip_prov_count 
       ,s111.prec_amt_by_ip_prov_count 
       ,s112.prec_opposing_id_by_ip_prov_count 
       ,s113.prec_gmt_datetime_by_ip_prov_count 
       ,s114.prec_user_id_by_ip_city_count 
       ,s115.prec_client_ip_by_ip_city_count 
       ,s116.prec_network_by_ip_city_count 
       ,s117.prec_device_sign_by_ip_city_count 
       ,s118.prec_info_1_by_ip_city_count 
       ,s119.prec_info_2_by_ip_city_count 
       ,s120.prec_ip_prov_by_ip_city_count 
       ,s121.prec_mobile_oper_platform_by_ip_city_count 
       ,s122.prec_version_by_ip_city_count 
       ,s123.prec_operation_channel_by_ip_city_count 
       ,s124.prec_pay_scene_by_ip_city_count 
       ,s125.prec_amt_by_ip_city_count 
       ,s126.prec_opposing_id_by_ip_city_count 
       ,s127.prec_gmt_datetime_by_ip_city_count 
       ,s128.prec_user_id_by_mobile_oper_platform_count 
       ,s129.prec_client_ip_by_mobile_oper_platform_count 
       ,s130.prec_network_by_mobile_oper_platform_count 
       ,s131.prec_device_sign_by_mobile_oper_platform_count 
       ,s132.prec_info_1_by_mobile_oper_platform_count 
       ,s133.prec_info_2_by_mobile_oper_platform_count 
       ,s134.prec_ip_prov_by_mobile_oper_platform_count 
       ,s135.prec_ip_city_by_mobile_oper_platform_count 
       ,s136.prec_version_by_mobile_oper_platform_count 
       ,s137.prec_operation_channel_by_mobile_oper_platform_count 
       ,s138.prec_pay_scene_by_mobile_oper_platform_count 
       ,s139.prec_amt_by_mobile_oper_platform_count 
       ,s140.prec_opposing_id_by_mobile_oper_platform_count 
       ,s141.prec_gmt_datetime_by_mobile_oper_platform_count 
       ,s142.prec_user_id_by_version_count 
       ,s143.prec_client_ip_by_version_count 
       ,s144.prec_network_by_version_count 
       ,s145.prec_device_sign_by_version_count 
       ,s146.prec_info_1_by_version_count 
       ,s147.prec_info_2_by_version_count 
       ,s148.prec_ip_prov_by_version_count 
       ,s149.prec_ip_city_by_version_count 
       ,s150.prec_mobile_oper_platform_by_version_count 
       ,s151.prec_operation_channel_by_version_count 
       ,s152.prec_pay_scene_by_version_count 
       ,s153.prec_amt_by_version_count 
       ,s154.prec_opposing_id_by_version_count 
       ,s155.prec_gmt_datetime_by_version_count 
       ,s156.prec_user_id_by_operation_channel_count 
       ,s157.prec_client_ip_by_operation_channel_count 
       ,s158.prec_network_by_operation_channel_count 
       ,s159.prec_device_sign_by_operation_channel_count 
       ,s160.prec_info_1_by_operation_channel_count 
       ,s161.prec_info_2_by_operation_channel_count 
       ,s162.prec_ip_prov_by_operation_channel_count 
       ,s163.prec_ip_city_by_operation_channel_count 
       ,s164.prec_mobile_oper_platform_by_operation_channel_count 
       ,s165.prec_version_by_operation_channel_count 
       ,s166.prec_pay_scene_by_operation_channel_count 
       ,s167.prec_amt_by_operation_channel_count 
       ,s168.prec_opposing_id_by_operation_channel_count 
       ,s169.prec_gmt_datetime_by_operation_channel_count 
       ,s170.prec_user_id_by_pay_scene_count 
   FROM kevin_newb1_prec_user_id_by_event_id_count s1 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_ip_prov_count s101 
     ON s1.event_id = s101.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_ip_prov_count s102 
     ON s1.event_id = s102.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_ip_prov_count s103 
     ON s1.event_id = s103.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_ip_prov_count s104 
     ON s1.event_id = s104.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_ip_prov_count s105 
     ON s1.event_id = s105.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_ip_prov_count s106 
     ON s1.event_id = s106.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_ip_prov_count s107 
     ON s1.event_id = s107.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_ip_prov_count s108 
     ON s1.event_id = s108.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_ip_prov_count s109 
     ON s1.event_id = s109.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_ip_prov_count s110 
     ON s1.event_id = s110.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_ip_prov_count s111 
     ON s1.event_id = s111.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_ip_prov_count s112 
     ON s1.event_id = s112.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_ip_prov_count s113 
     ON s1.event_id = s113.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_ip_city_count s114 
     ON s1.event_id = s114.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_ip_city_count s115 
     ON s1.event_id = s115.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_ip_city_count s116 
     ON s1.event_id = s116.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_ip_city_count s117 
     ON s1.event_id = s117.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_ip_city_count s118 
     ON s1.event_id = s118.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_ip_city_count s119 
     ON s1.event_id = s119.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_ip_city_count s120 
     ON s1.event_id = s120.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_ip_city_count s121 
     ON s1.event_id = s121.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_ip_city_count s122 
     ON s1.event_id = s122.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_ip_city_count s123 
     ON s1.event_id = s123.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_ip_city_count s124 
     ON s1.event_id = s124.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_ip_city_count s125 
     ON s1.event_id = s125.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_ip_city_count s126 
     ON s1.event_id = s126.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_ip_city_count s127 
     ON s1.event_id = s127.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_mobile_oper_platform_count s128 
     ON s1.event_id = s128.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_mobile_oper_platform_count s129 
     ON s1.event_id = s129.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_mobile_oper_platform_count s130 
     ON s1.event_id = s130.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_mobile_oper_platform_count s131 
     ON s1.event_id = s131.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_mobile_oper_platform_count s132 
     ON s1.event_id = s132.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_mobile_oper_platform_count s133 
     ON s1.event_id = s133.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_mobile_oper_platform_count s134 
     ON s1.event_id = s134.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_mobile_oper_platform_count s135 
     ON s1.event_id = s135.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_mobile_oper_platform_count s136 
     ON s1.event_id = s136.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_mobile_oper_platform_count s137 
     ON s1.event_id = s137.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_mobile_oper_platform_count s138 
     ON s1.event_id = s138.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_mobile_oper_platform_count s139 
     ON s1.event_id = s139.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_mobile_oper_platform_count s140 
     ON s1.event_id = s140.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_mobile_oper_platform_count s141 
     ON s1.event_id = s141.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_version_count s142 
     ON s1.event_id = s142.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_version_count s143 
     ON s1.event_id = s143.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_version_count s144 
     ON s1.event_id = s144.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_version_count s145 
     ON s1.event_id = s145.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_version_count s146 
     ON s1.event_id = s146.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_version_count s147 
     ON s1.event_id = s147.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_version_count s148 
     ON s1.event_id = s148.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_version_count s149 
     ON s1.event_id = s149.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_version_count s150 
     ON s1.event_id = s150.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_version_count s151 
     ON s1.event_id = s151.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_version_count s152 
     ON s1.event_id = s152.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_version_count s153 
     ON s1.event_id = s153.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_version_count s154 
     ON s1.event_id = s154.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_version_count s155 
     ON s1.event_id = s155.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_operation_channel_count s156 
     ON s1.event_id = s156.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_operation_channel_count s157 
     ON s1.event_id = s157.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_operation_channel_count s158 
     ON s1.event_id = s158.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_operation_channel_count s159 
     ON s1.event_id = s159.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_operation_channel_count s160 
     ON s1.event_id = s160.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_operation_channel_count s161 
     ON s1.event_id = s161.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_operation_channel_count s162 
     ON s1.event_id = s162.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_operation_channel_count s163 
     ON s1.event_id = s163.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_operation_channel_count s164 
     ON s1.event_id = s164.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_operation_channel_count s165 
     ON s1.event_id = s165.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_operation_channel_count s166 
     ON s1.event_id = s166.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_operation_channel_count s167 
     ON s1.event_id = s167.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_operation_channel_count s168 
     ON s1.event_id = s168.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_operation_channel_count s169 
     ON s1.event_id = s169.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_pay_scene_count s170 
     ON s1.event_id = s170.event_id 
;


CREATE TABLE IF NOT EXISTS kevin_prec_feature_b1_0828_p4 AS
  SELECT s1.event_id 
       ,s171.prec_client_ip_by_pay_scene_count 
       ,s172.prec_network_by_pay_scene_count 
       ,s173.prec_device_sign_by_pay_scene_count 
       ,s174.prec_info_1_by_pay_scene_count 
       ,s175.prec_info_2_by_pay_scene_count 
       ,s176.prec_ip_prov_by_pay_scene_count 
       ,s177.prec_ip_city_by_pay_scene_count 
       ,s178.prec_mobile_oper_platform_by_pay_scene_count 
       ,s179.prec_version_by_pay_scene_count 
       ,s180.prec_operation_channel_by_pay_scene_count 
       ,s181.prec_amt_by_pay_scene_count 
       ,s182.prec_opposing_id_by_pay_scene_count 
       ,s183.prec_gmt_datetime_by_pay_scene_count 
       ,s184.prec_user_id_by_amt_count 
       ,s185.prec_client_ip_by_amt_count 
       ,s186.prec_network_by_amt_count 
       ,s187.prec_device_sign_by_amt_count 
       ,s188.prec_info_1_by_amt_count 
       ,s189.prec_info_2_by_amt_count 
       ,s190.prec_ip_prov_by_amt_count 
       ,s191.prec_ip_city_by_amt_count 
       ,s192.prec_mobile_oper_platform_by_amt_count 
       ,s193.prec_version_by_amt_count 
       ,s194.prec_operation_channel_by_amt_count 
       ,s195.prec_pay_scene_by_amt_count 
       ,s196.prec_opposing_id_by_amt_count 
       ,s197.prec_gmt_datetime_by_amt_count 
       ,s198.prec_user_id_by_opposing_id_count 
       ,s199.prec_client_ip_by_opposing_id_count 
       ,s200.prec_network_by_opposing_id_count 
       ,s201.prec_device_sign_by_opposing_id_count 
       ,s202.prec_info_1_by_opposing_id_count 
       ,s203.prec_info_2_by_opposing_id_count 
       ,s204.prec_ip_prov_by_opposing_id_count 
       ,s205.prec_ip_city_by_opposing_id_count 
       ,s206.prec_mobile_oper_platform_by_opposing_id_count 
       ,s207.prec_version_by_opposing_id_count 
       ,s208.prec_operation_channel_by_opposing_id_count 
       ,s209.prec_pay_scene_by_opposing_id_count 
       ,s210.prec_amt_by_opposing_id_count 
       ,s211.prec_gmt_datetime_by_opposing_id_count 
       ,s212.prec_user_id_by_gmt_datetime_count 
       ,s213.prec_client_ip_by_gmt_datetime_count 
       ,s214.prec_network_by_gmt_datetime_count 
       ,s215.prec_device_sign_by_gmt_datetime_count 
       ,s216.prec_info_1_by_gmt_datetime_count 
       ,s217.prec_info_2_by_gmt_datetime_count 
       ,s218.prec_ip_prov_by_gmt_datetime_count 
       ,s219.prec_ip_city_by_gmt_datetime_count 
       ,s220.prec_mobile_oper_platform_by_gmt_datetime_count 
       ,s221.prec_version_by_gmt_datetime_count 
       ,s222.prec_operation_channel_by_gmt_datetime_count 
       ,s223.prec_pay_scene_by_gmt_datetime_count 
       ,s224.prec_amt_by_gmt_datetime_count 
       ,s225.prec_opposing_id_by_gmt_datetime_count 
   FROM kevin_newb1_prec_user_id_by_event_id_count s1 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_pay_scene_count s171 
     ON s1.event_id = s171.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_pay_scene_count s172 
     ON s1.event_id = s172.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_pay_scene_count s173 
     ON s1.event_id = s173.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_pay_scene_count s174 
     ON s1.event_id = s174.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_pay_scene_count s175 
     ON s1.event_id = s175.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_pay_scene_count s176 
     ON s1.event_id = s176.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_pay_scene_count s177 
     ON s1.event_id = s177.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_pay_scene_count s178 
     ON s1.event_id = s178.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_pay_scene_count s179 
     ON s1.event_id = s179.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_pay_scene_count s180 
     ON s1.event_id = s180.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_pay_scene_count s181 
     ON s1.event_id = s181.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_pay_scene_count s182 
     ON s1.event_id = s182.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_pay_scene_count s183 
     ON s1.event_id = s183.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_amt_count s184 
     ON s1.event_id = s184.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_amt_count s185 
     ON s1.event_id = s185.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_amt_count s186 
     ON s1.event_id = s186.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_amt_count s187 
     ON s1.event_id = s187.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_amt_count s188 
     ON s1.event_id = s188.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_amt_count s189 
     ON s1.event_id = s189.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_amt_count s190 
     ON s1.event_id = s190.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_amt_count s191 
     ON s1.event_id = s191.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_amt_count s192 
     ON s1.event_id = s192.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_amt_count s193 
     ON s1.event_id = s193.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_amt_count s194 
     ON s1.event_id = s194.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_amt_count s195 
     ON s1.event_id = s195.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_amt_count s196 
     ON s1.event_id = s196.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_amt_count s197 
     ON s1.event_id = s197.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_opposing_id_count s198 
     ON s1.event_id = s198.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_opposing_id_count s199 
     ON s1.event_id = s199.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_opposing_id_count s200 
     ON s1.event_id = s200.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_opposing_id_count s201 
     ON s1.event_id = s201.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_opposing_id_count s202 
     ON s1.event_id = s202.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_opposing_id_count s203 
     ON s1.event_id = s203.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_opposing_id_count s204 
     ON s1.event_id = s204.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_opposing_id_count s205 
     ON s1.event_id = s205.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_opposing_id_count s206 
     ON s1.event_id = s206.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_opposing_id_count s207 
     ON s1.event_id = s207.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_opposing_id_count s208 
     ON s1.event_id = s208.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_opposing_id_count s209 
     ON s1.event_id = s209.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_opposing_id_count s210 
     ON s1.event_id = s210.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_gmt_datetime_by_opposing_id_count s211 
     ON s1.event_id = s211.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_user_id_by_gmt_datetime_count s212 
     ON s1.event_id = s212.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_client_ip_by_gmt_datetime_count s213 
     ON s1.event_id = s213.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_network_by_gmt_datetime_count s214 
     ON s1.event_id = s214.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_device_sign_by_gmt_datetime_count s215 
     ON s1.event_id = s215.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_1_by_gmt_datetime_count s216 
     ON s1.event_id = s216.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_info_2_by_gmt_datetime_count s217 
     ON s1.event_id = s217.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_prov_by_gmt_datetime_count s218 
     ON s1.event_id = s218.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_ip_city_by_gmt_datetime_count s219 
     ON s1.event_id = s219.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_mobile_oper_platform_by_gmt_datetime_count s220 
     ON s1.event_id = s220.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_version_by_gmt_datetime_count s221 
     ON s1.event_id = s221.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_operation_channel_by_gmt_datetime_count s222 
     ON s1.event_id = s222.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_pay_scene_by_gmt_datetime_count s223 
     ON s1.event_id = s223.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_amt_by_gmt_datetime_count s224 
     ON s1.event_id = s224.event_id 
 LEFT OUTER JOIN kevin_newb1_prec_opposing_id_by_gmt_datetime_count s225 
     ON s1.event_id = s225.event_id
;




CREATE TABLE IF NOT EXISTS kevin_prec_feature_b1_0828 AS
  SELECT a.event_id 
       ,a.prec_user_id_by_event_id_count 
       ,a.prec_client_ip_by_event_id_count 
       ,a.prec_network_by_event_id_count 
       ,a.prec_device_sign_by_event_id_count 
       ,a.prec_info_1_by_event_id_count 
       ,a.prec_info_2_by_event_id_count 
       ,a.prec_ip_prov_by_event_id_count 
       ,a.prec_ip_city_by_event_id_count 
       ,a.prec_mobile_oper_platform_by_event_id_count 
       ,a.prec_version_by_event_id_count 
       ,a.prec_operation_channel_by_event_id_count 
       ,a.prec_pay_scene_by_event_id_count 
       ,a.prec_amt_by_event_id_count 
       ,a.prec_opposing_id_by_event_id_count 
       ,a.prec_gmt_datetime_by_event_id_count 
       ,a.prec_client_ip_by_user_id_count 
       ,a.prec_network_by_user_id_count 
       ,a.prec_device_sign_by_user_id_count 
       ,a.prec_info_1_by_user_id_count 
       ,a.prec_info_2_by_user_id_count 
       ,a.prec_ip_prov_by_user_id_count 
       ,a.prec_ip_city_by_user_id_count 
       ,a.prec_mobile_oper_platform_by_user_id_count 
       ,a.prec_version_by_user_id_count 
       ,a.prec_operation_channel_by_user_id_count 
       ,a.prec_pay_scene_by_user_id_count 
       ,a.prec_amt_by_user_id_count 
       ,a.prec_opposing_id_by_user_id_count 
       ,a.prec_gmt_datetime_by_user_id_count 
       ,a.prec_user_id_by_client_ip_count 
       ,a.prec_network_by_client_ip_count 
       ,a.prec_device_sign_by_client_ip_count 
       ,a.prec_info_1_by_client_ip_count 
       ,a.prec_info_2_by_client_ip_count 
       ,a.prec_ip_prov_by_client_ip_count 
       ,a.prec_ip_city_by_client_ip_count 
       ,a.prec_mobile_oper_platform_by_client_ip_count 
       ,a.prec_version_by_client_ip_count 
       ,a.prec_operation_channel_by_client_ip_count 
       ,a.prec_pay_scene_by_client_ip_count 
       ,a.prec_amt_by_client_ip_count 
       ,a.prec_opposing_id_by_client_ip_count 
       ,a.prec_gmt_datetime_by_client_ip_count 
       ,a.prec_user_id_by_network_count 
       ,a.prec_client_ip_by_network_count 
       ,a.prec_device_sign_by_network_count 
       ,a.prec_info_1_by_network_count 
       ,a.prec_info_2_by_network_count 
       ,a.prec_ip_prov_by_network_count 
       ,a.prec_ip_city_by_network_count 
       ,b.prec_mobile_oper_platform_by_network_count 
       ,b.prec_version_by_network_count 
       ,b.prec_operation_channel_by_network_count 
       ,b.prec_pay_scene_by_network_count 
       ,b.prec_amt_by_network_count 
       ,b.prec_opposing_id_by_network_count 
       ,b.prec_gmt_datetime_by_network_count 
       ,b.prec_user_id_by_device_sign_count 
       ,b.prec_client_ip_by_device_sign_count 
       ,b.prec_network_by_device_sign_count 
       ,b.prec_info_1_by_device_sign_count 
       ,b.prec_info_2_by_device_sign_count 
       ,b.prec_ip_prov_by_device_sign_count 
       ,b.prec_ip_city_by_device_sign_count 
       ,b.prec_mobile_oper_platform_by_device_sign_count 
       ,b.prec_version_by_device_sign_count 
       ,b.prec_operation_channel_by_device_sign_count 
       ,b.prec_pay_scene_by_device_sign_count 
       ,b.prec_amt_by_device_sign_count 
       ,b.prec_opposing_id_by_device_sign_count 
       ,b.prec_gmt_datetime_by_device_sign_count 
       ,b.prec_user_id_by_info_1_count 
       ,b.prec_client_ip_by_info_1_count 
       ,b.prec_network_by_info_1_count 
       ,b.prec_device_sign_by_info_1_count 
       ,b.prec_info_2_by_info_1_count 
       ,b.prec_ip_prov_by_info_1_count 
       ,b.prec_ip_city_by_info_1_count 
       ,b.prec_mobile_oper_platform_by_info_1_count 
       ,b.prec_version_by_info_1_count 
       ,b.prec_operation_channel_by_info_1_count 
       ,b.prec_pay_scene_by_info_1_count 
       ,b.prec_amt_by_info_1_count 
       ,b.prec_opposing_id_by_info_1_count 
       ,b.prec_gmt_datetime_by_info_1_count 
       ,b.prec_user_id_by_info_2_count 
       ,b.prec_client_ip_by_info_2_count 
       ,b.prec_network_by_info_2_count 
       ,b.prec_device_sign_by_info_2_count 
       ,b.prec_info_1_by_info_2_count 
       ,b.prec_ip_prov_by_info_2_count 
       ,b.prec_ip_city_by_info_2_count 
       ,b.prec_mobile_oper_platform_by_info_2_count 
       ,b.prec_version_by_info_2_count 
       ,b.prec_operation_channel_by_info_2_count 
       ,b.prec_pay_scene_by_info_2_count 
       ,b.prec_amt_by_info_2_count 
       ,b.prec_opposing_id_by_info_2_count 
       ,b.prec_gmt_datetime_by_info_2_count 
       ,b.prec_user_id_by_ip_prov_count 
       ,c.prec_amt_by_ip_city_count 
       ,c.prec_amt_by_ip_prov_count 
       ,c.prec_amt_by_mobile_oper_platform_count 
       ,c.prec_amt_by_operation_channel_count 
       ,c.prec_amt_by_version_count 
       ,c.prec_client_ip_by_ip_city_count 
       ,c.prec_client_ip_by_ip_prov_count 
       ,c.prec_client_ip_by_mobile_oper_platform_count 
       ,c.prec_client_ip_by_operation_channel_count 
       ,c.prec_client_ip_by_version_count 
       ,c.prec_device_sign_by_ip_city_count 
       ,c.prec_device_sign_by_ip_prov_count 
       ,c.prec_device_sign_by_mobile_oper_platform_count 
       ,c.prec_device_sign_by_operation_channel_count 
       ,c.prec_device_sign_by_version_count 
       ,c.prec_gmt_datetime_by_ip_city_count 
       ,c.prec_gmt_datetime_by_ip_prov_count 
       ,c.prec_gmt_datetime_by_mobile_oper_platform_count 
       ,c.prec_gmt_datetime_by_operation_channel_count 
       ,c.prec_gmt_datetime_by_version_count 
       ,c.prec_info_1_by_ip_city_count 
       ,c.prec_info_1_by_ip_prov_count 
       ,c.prec_info_1_by_mobile_oper_platform_count 
       ,c.prec_info_1_by_operation_channel_count 
       ,c.prec_info_1_by_version_count 
       ,c.prec_info_2_by_ip_city_count 
       ,c.prec_info_2_by_ip_prov_count 
       ,c.prec_info_2_by_mobile_oper_platform_count 
       ,c.prec_info_2_by_operation_channel_count 
       ,c.prec_info_2_by_version_count 
       ,c.prec_ip_city_by_ip_prov_count 
       ,c.prec_ip_city_by_mobile_oper_platform_count 
       ,c.prec_ip_city_by_operation_channel_count 
       ,c.prec_ip_city_by_version_count 
       ,c.prec_ip_prov_by_ip_city_count 
       ,c.prec_ip_prov_by_mobile_oper_platform_count 
       ,c.prec_ip_prov_by_operation_channel_count 
       ,c.prec_ip_prov_by_version_count 
       ,c.prec_mobile_oper_platform_by_ip_city_count 
       ,c.prec_mobile_oper_platform_by_ip_prov_count 
       ,c.prec_mobile_oper_platform_by_operation_channel_count 
       ,c.prec_mobile_oper_platform_by_version_count 
       ,c.prec_network_by_ip_city_count 
       ,c.prec_network_by_ip_prov_count 
       ,c.prec_network_by_mobile_oper_platform_count 
       ,c.prec_network_by_operation_channel_count 
       ,c.prec_network_by_version_count 
       ,c.prec_operation_channel_by_ip_city_count 
       ,c.prec_operation_channel_by_ip_prov_count 
       ,c.prec_operation_channel_by_mobile_oper_platform_count 
       ,c.prec_operation_channel_by_version_count 
       ,c.prec_opposing_id_by_ip_city_count 
       ,c.prec_opposing_id_by_ip_prov_count 
       ,c.prec_opposing_id_by_mobile_oper_platform_count 
       ,c.prec_opposing_id_by_operation_channel_count 
       ,c.prec_opposing_id_by_version_count 
       ,c.prec_pay_scene_by_ip_city_count 
       ,c.prec_pay_scene_by_ip_prov_count 
       ,c.prec_pay_scene_by_mobile_oper_platform_count 
       ,c.prec_pay_scene_by_operation_channel_count 
       ,c.prec_pay_scene_by_version_count 
       ,c.prec_user_id_by_ip_city_count 
       ,c.prec_user_id_by_mobile_oper_platform_count 
       ,c.prec_user_id_by_operation_channel_count 
       ,c.prec_user_id_by_pay_scene_count 
       ,c.prec_user_id_by_version_count 
       ,c.prec_version_by_ip_city_count 
       ,c.prec_version_by_ip_prov_count 
       ,c.prec_version_by_mobile_oper_platform_count 
       ,c.prec_version_by_operation_channel_count 
       ,d.prec_amt_by_gmt_datetime_count 
       ,d.prec_amt_by_opposing_id_count 
       ,d.prec_amt_by_pay_scene_count 
       ,d.prec_client_ip_by_amt_count 
       ,d.prec_client_ip_by_gmt_datetime_count 
       ,d.prec_client_ip_by_opposing_id_count 
       ,d.prec_client_ip_by_pay_scene_count 
       ,d.prec_device_sign_by_amt_count 
       ,d.prec_device_sign_by_gmt_datetime_count 
       ,d.prec_device_sign_by_opposing_id_count 
       ,d.prec_device_sign_by_pay_scene_count 
       ,d.prec_gmt_datetime_by_amt_count 
       ,d.prec_gmt_datetime_by_opposing_id_count 
       ,d.prec_gmt_datetime_by_pay_scene_count 
       ,d.prec_info_1_by_amt_count 
       ,d.prec_info_1_by_gmt_datetime_count 
       ,d.prec_info_1_by_opposing_id_count 
       ,d.prec_info_1_by_pay_scene_count 
       ,d.prec_info_2_by_amt_count 
       ,d.prec_info_2_by_gmt_datetime_count 
       ,d.prec_info_2_by_opposing_id_count 
       ,d.prec_info_2_by_pay_scene_count 
       ,d.prec_ip_city_by_amt_count 
       ,d.prec_ip_city_by_gmt_datetime_count 
       ,d.prec_ip_city_by_opposing_id_count 
       ,d.prec_ip_city_by_pay_scene_count 
       ,d.prec_ip_prov_by_amt_count 
       ,d.prec_ip_prov_by_gmt_datetime_count 
       ,d.prec_ip_prov_by_opposing_id_count 
       ,d.prec_ip_prov_by_pay_scene_count 
       ,d.prec_mobile_oper_platform_by_amt_count 
       ,d.prec_mobile_oper_platform_by_gmt_datetime_count 
       ,d.prec_mobile_oper_platform_by_opposing_id_count 
       ,d.prec_mobile_oper_platform_by_pay_scene_count 
       ,d.prec_network_by_amt_count 
       ,d.prec_network_by_gmt_datetime_count 
       ,d.prec_network_by_opposing_id_count 
       ,d.prec_network_by_pay_scene_count 
       ,d.prec_operation_channel_by_amt_count 
       ,d.prec_operation_channel_by_gmt_datetime_count 
       ,d.prec_operation_channel_by_opposing_id_count 
       ,d.prec_operation_channel_by_pay_scene_count 
       ,d.prec_opposing_id_by_amt_count 
       ,d.prec_opposing_id_by_gmt_datetime_count 
       ,d.prec_opposing_id_by_pay_scene_count 
       ,d.prec_pay_scene_by_amt_count 
       ,d.prec_pay_scene_by_gmt_datetime_count 
       ,d.prec_pay_scene_by_opposing_id_count 
       ,d.prec_user_id_by_amt_count 
       ,d.prec_user_id_by_gmt_datetime_count 
       ,d.prec_user_id_by_opposing_id_count 
       ,d.prec_version_by_amt_count 
       ,d.prec_version_by_gmt_datetime_count 
       ,d.prec_version_by_opposing_id_count 
       ,d.prec_version_by_pay_scene_count 
   FROM kevin_prec_feature_b1_0828_p1 a 
 LEFT OUTER JOIN kevin_prec_feature_b1_0828_p2 b 
     ON a.event_id = b.event_id 
 LEFT OUTER JOIN kevin_prec_feature_b1_0828_p3 c 
     ON a.event_id = c.event_id 
 LEFT OUTER JOIN kevin_prec_feature_b1_0828_p4 d 
     ON a.event_id = d.event_id
;


SELECT * 
  FROM kevin_prec_feature_b1_0828
;

-- ########################################################################
-- 当前小时的特征情况
-- ########################################################################
CREATE TABLE IF NOT EXISTS kevin_prec_feature_out_0828 AS
  SELECT * 
       ,prec_user_id_by_event_id_count / ( CASE WHEN ( prec_opposing_id_by_event_id_count = 0 
                                                        OR prec_opposing_id_by_event_id_count IS NULL 
                                                     ) THEN 0.001 
                                                ELSE prec_opposing_id_by_event_id_count 
                                            END 
                                         )             AS prec_divide_event_id_count 
       ,prec_user_id_by_opposing_id_count / ( CASE WHEN ( prec_opposing_id_by_user_id_count = 0 
                                                           OR prec_opposing_id_by_user_id_count IS NULL 
                                                        ) THEN 0.001 
                                                   ELSE prec_opposing_id_by_user_id_count 
                                               END 
                                            )          AS prec_divide_opposing_id_count 
       ,prec_user_id_by_client_ip_count / ( CASE WHEN ( prec_opposing_id_by_client_ip_count = 0 
                                                         OR prec_opposing_id_by_client_ip_count IS NULL 
                                                      ) THEN 0.001 
                                                 ELSE prec_opposing_id_by_client_ip_count 
                                             END 
                                          )            AS prec_divide_client_ip_count 
       ,prec_user_id_by_network_count / ( CASE WHEN ( prec_opposing_id_by_network_count = 0 
                                                       OR prec_opposing_id_by_network_count IS NULL 
                                                    ) THEN 0.001 
                                               ELSE prec_opposing_id_by_network_count 
                                           END 
                                        )              AS prec_divide_network_count 
       ,prec_user_id_by_device_sign_count / ( CASE WHEN ( prec_opposing_id_by_device_sign_count = 0 
                                                           OR prec_opposing_id_by_device_sign_count IS NULL 
                                                        ) THEN 0.001 
                                                   ELSE prec_opposing_id_by_device_sign_count 
                                               END 
                                            )          AS prec_divide_device_sign_count 
       ,prec_user_id_by_info_1_count / ( CASE WHEN ( prec_opposing_id_by_info_1_count = 0 
                                                      OR prec_opposing_id_by_info_1_count IS NULL 
                                                   ) THEN 0.001 
                                              ELSE prec_opposing_id_by_info_1_count 
                                          END 
                                       )               AS prec_divide_info_1_count 
       ,prec_user_id_by_info_2_count / ( CASE WHEN ( prec_opposing_id_by_info_2_count = 0 
                                                      OR prec_opposing_id_by_info_2_count IS NULL 
                                                   ) THEN 0.001 
                                              ELSE prec_opposing_id_by_info_2_count 
                                          END 
                                       )               AS prec_divide_info_2_count 
       ,prec_user_id_by_ip_prov_count / ( CASE WHEN ( prec_opposing_id_by_ip_prov_count = 0 
                                                       OR prec_opposing_id_by_ip_prov_count IS NULL 
                                                    ) THEN 0.001 
                                               ELSE prec_opposing_id_by_ip_prov_count 
                                           END 
                                        )              AS prec_divide_ip_prov_count 
       ,prec_user_id_by_ip_city_count / ( CASE WHEN ( prec_opposing_id_by_ip_city_count = 0 
                                                       OR prec_opposing_id_by_ip_city_count IS NULL 
                                                    ) THEN 0.001 
                                               ELSE prec_opposing_id_by_ip_city_count 
                                           END 
                                        )              AS prec_divide_ip_city_count 
       ,prec_user_id_by_mobile_oper_platform_count / ( CASE WHEN ( prec_opposing_id_by_mobile_oper_platform_count = 0 
                                                                    OR prec_opposing_id_by_mobile_oper_platform_count IS NULL 
                                                                 ) THEN 0.001 
                                                            ELSE prec_opposing_id_by_mobile_oper_platform_count 
                                                        END 
                                                     ) AS prec_divide_mobile_oper_platform_count 
       ,prec_user_id_by_version_count / ( CASE WHEN ( prec_opposing_id_by_version_count = 0 
                                                       OR prec_opposing_id_by_version_count IS NULL 
                                                    ) THEN 0.001 
                                               ELSE prec_opposing_id_by_version_count 
                                           END 
                                        )              AS prec_divide_version_count 
       ,prec_user_id_by_operation_channel_count / ( CASE WHEN ( prec_opposing_id_by_operation_channel_count = 0 
                                                                 OR prec_opposing_id_by_operation_channel_count IS NULL 
                                                              ) THEN 0.001 
                                                         ELSE prec_opposing_id_by_operation_channel_count 
                                                     END 
                                                  )    AS prec_divide_operation_channel_count 
       ,prec_user_id_by_pay_scene_count / ( CASE WHEN ( prec_opposing_id_by_pay_scene_count = 0 
                                                         OR prec_opposing_id_by_pay_scene_count IS NULL 
                                                      ) THEN 0.001 
                                                 ELSE prec_opposing_id_by_pay_scene_count 
                                             END 
                                          )            AS prec_divide_pay_scene_count 
       ,prec_user_id_by_amt_count / ( CASE WHEN ( prec_opposing_id_by_amt_count = 0 
                                                   OR prec_opposing_id_by_amt_count IS NULL 
                                                ) THEN 0.001 
                                           ELSE prec_opposing_id_by_amt_count 
                                       END 
                                    )                  AS prec_divide_amt_count 
       ,prec_user_id_by_gmt_datetime_count / ( CASE WHEN ( prec_opposing_id_by_gmt_datetime_count = 0 
                                                            OR prec_opposing_id_by_gmt_datetime_count IS NULL 
                                                         ) THEN 0.001 
                                                    ELSE prec_opposing_id_by_gmt_datetime_count 
                                                END 
                                             )         AS prec_divide_gmt_datetime_count 
   FROM kevin_prec_feature_b1_0828
;


