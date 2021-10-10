
-- ##############  提取时间特征  ######################
-- gmt_day_of_month  
-- gmt_day_of_week
-- ##############  提取时间特征  ######################

CREATE TABLE IF NOT EXISTS all_data_encoding_train_testa_testb AS
  SELECT * 
       ,TO_DATE(gmt_occur ,'yyyy-mm-dd hh')                 AS gmt_datetime 
       ,TO_DATE(split(gmt_occur ,' ') [ 0 ] ,'yyyy-mm-dd')  AS gmt_date
       ,int(split(gmt_occur,' ')[1])                        AS gmt_hour
       ,DATEPART(TO_DATE(gmt_occur ,'yyyy-mm-dd hh') ,'dd') AS gmt_day_of_month 
       ,WEEKDAY(TO_DATE(gmt_occur ,'yyyy-mm-dd hh'))        AS gmt_day_of_week 
   FROM all_data_out
;


-- ######################################################
-- 基于user_id
-- ######################################################

CREATE TABLE IF NOT EXISTS kevin_newb_user_id_date_hist_count AS
  SELECT s.event_id 
       ,s.user_id 
       ,client_ip.client_ip 
       ,client_ip.rn-1                              AS hist_count_client_ip_num 
       ,network.network 
       ,network.rn-1                                AS hist_count_network_num 
       ,device_sign.device_sign 
       ,device_sign.rn-1                            AS hist_count_device_sign_num 
       ,info_1.info_1 
       ,info_1.rn-1                                 AS hist_count_info_1_num 
       ,info_2.info_2 
       ,info_2.rn-1                                 AS hist_count_info_2_num 
       ,ip_prov.ip_prov 
       ,ip_prov.rn-1                                AS hist_count_ip_prov_num 
       ,ip_city.ip_city 
       ,ip_city.rn-1                                AS hist_count_ip_city_num 
       ,mobile_oper_platform.mobile_oper_platform 
       ,mobile_oper_platform.rn-1                   AS hist_count_mobile_oper_platform_num 
       ,version.version 
       ,version.rn-1                                AS hist_count_version_num 
       ,card_cert_no.card_cert_no 
       ,card_cert_no.rn-1                           AS hist_count_card_cert_no_num 
       ,cert_prov.cert_prov 
       ,cert_prov.rn-1                              AS hist_count_cert_prov_num 
       ,cert_city.cert_city 
       ,cert_city.rn-1                              AS hist_count_cert_city_num 
       ,card_bin_prov.card_bin_prov 
       ,card_bin_prov.rn-1                          AS hist_count_card_bin_prov_num 
       ,card_bin_city.card_bin_city 
       ,card_bin_city.rn-1                          AS hist_count_card_bin_city_num 
       ,card_mobile_prov.card_mobile_prov 
       ,card_mobile_prov.rn-1                       AS hist_count_card_mobile_prov_num 
       ,card_mobile_city.card_mobile_city 
       ,card_mobile_city.rn-1                       AS hist_count_card_mobile_city_num 
       ,card_cert_prov.card_cert_prov 
       ,card_cert_prov.rn-1                         AS hist_count_card_cert_prov_num 
       ,card_cert_city.card_cert_city 
       ,card_cert_city.rn-1                         AS hist_count_card_cert_city_num 
       ,is_one_people.is_one_people 
       ,is_one_people.rn-1                          AS hist_count_is_one_people_num 
       ,operation_channel.operation_channel 
       ,operation_channel.rn-1                      AS hist_count_operation_channel_num 
       ,pay_scene.pay_scene 
       ,pay_scene.rn-1                              AS hist_count_pay_scene_num 
       ,amt.amt 
       ,amt.rn-1                                    AS hist_count_amt_num 
       ,is_peer_pay.is_peer_pay 
       ,is_peer_pay.rn-1                            AS hist_count_is_peer_pay_num 
       ,opposing_id.opposing_id 
       ,opposing_id.rn-1                            AS hist_count_opposing_id_num 
       ,income_card_no.income_card_no 
       ,income_card_no.rn-1                         AS hist_count_income_card_no_num 
       ,income_card_cert_no.income_card_cert_no 
       ,income_card_cert_no.rn-1                    AS hist_count_income_card_cert_no_num 
       ,income_card_mobile.income_card_mobile 
       ,income_card_mobile.rn-1                     AS hist_count_income_card_mobile_num 
       ,income_card_bank_code.income_card_bank_code 
       ,income_card_bank_code.rn-1                  AS hist_count_income_card_bank_code_num 
       ,province.province 
       ,province.rn-1                               AS hist_count_province_num 
       ,city.city 
       ,city.rn-1                                   AS hist_count_city_num 
       ,s.gmt_datetime 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )s 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,client_ip 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , client_ip ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )client_ip 
     ON s.event_id = client_ip.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,network 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , network ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )network 
     ON s.event_id = network.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,device_sign 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , device_sign ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )device_sign 
     ON s.event_id = device_sign.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,info_1 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , info_1 ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )info_1 
     ON s.event_id = info_1.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,info_2 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , info_2 ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )info_2 
     ON s.event_id = info_2.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,ip_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , ip_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )ip_prov 
     ON s.event_id = ip_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,ip_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , ip_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )ip_city 
     ON s.event_id = ip_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,mobile_oper_platform 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , mobile_oper_platform ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )mobile_oper_platform 
     ON s.event_id = mobile_oper_platform.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,version 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , version ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )version 
     ON s.event_id = version.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_cert_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_cert_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_cert_no 
     ON s.event_id = card_cert_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,cert_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , cert_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )cert_prov 
     ON s.event_id = cert_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,cert_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , cert_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )cert_city 
     ON s.event_id = cert_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_bin_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_bin_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_bin_prov 
     ON s.event_id = card_bin_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_bin_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_bin_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_bin_city 
     ON s.event_id = card_bin_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_mobile_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_mobile_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_mobile_prov 
     ON s.event_id = card_mobile_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_mobile_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_mobile_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_mobile_city 
     ON s.event_id = card_mobile_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_cert_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_cert_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_cert_prov 
     ON s.event_id = card_cert_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,card_cert_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , card_cert_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )card_cert_city 
     ON s.event_id = card_cert_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,is_one_people 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , is_one_people ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )is_one_people 
     ON s.event_id = is_one_people.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,operation_channel 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , operation_channel ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )operation_channel 
     ON s.event_id = operation_channel.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,pay_scene 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , pay_scene ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )pay_scene 
     ON s.event_id = pay_scene.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,amt 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , amt ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )amt 
     ON s.event_id = amt.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,is_peer_pay 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , is_peer_pay ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )is_peer_pay 
     ON s.event_id = is_peer_pay.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,opposing_id 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , opposing_id ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )opposing_id 
     ON s.event_id = opposing_id.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,income_card_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , income_card_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )income_card_no 
     ON s.event_id = income_card_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,income_card_cert_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , income_card_cert_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )income_card_cert_no 
     ON s.event_id = income_card_cert_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,income_card_mobile 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , income_card_mobile ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )income_card_mobile 
     ON s.event_id = income_card_mobile.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,income_card_bank_code 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , income_card_bank_code ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )income_card_bank_code 
     ON s.event_id = income_card_bank_code.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,province 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , province ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )province 
     ON s.event_id = province.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,user_id 
                        ,city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY user_id , city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND user_id IS NOT NULL 
                 )city 
     ON s.event_id = city.event_id;



CREATE TABLE IF NOT EXISTS kevin_newb_opposing_id_date_hist_count AS
  SELECT s.event_id 
       ,s.opposing_id 
       ,user_id.user_id 
       ,user_id.rn-1                                AS hist_count_user_id_num 
       ,client_ip.client_ip 
       ,client_ip.rn-1                              AS hist_count_client_ip_num 
       ,network.network 
       ,network.rn-1                                AS hist_count_network_num 
       ,device_sign.device_sign 
       ,device_sign.rn-1                            AS hist_count_device_sign_num 
       ,info_1.info_1 
       ,info_1.rn-1                                 AS hist_count_info_1_num 
       ,info_2.info_2 
       ,info_2.rn-1                                 AS hist_count_info_2_num 
       ,ip_prov.ip_prov 
       ,ip_prov.rn-1                                AS hist_count_ip_prov_num 
       ,ip_city.ip_city 
       ,ip_city.rn-1                                AS hist_count_ip_city_num 
       ,mobile_oper_platform.mobile_oper_platform 
       ,mobile_oper_platform.rn-1                   AS hist_count_mobile_oper_platform_num 
       ,version.version 
       ,version.rn-1                                AS hist_count_version_num 
       ,card_cert_no.card_cert_no 
       ,card_cert_no.rn-1                           AS hist_count_card_cert_no_num 
       ,cert_prov.cert_prov 
       ,cert_prov.rn-1                              AS hist_count_cert_prov_num 
       ,cert_city.cert_city 
       ,cert_city.rn-1                              AS hist_count_cert_city_num 
       ,card_bin_prov.card_bin_prov 
       ,card_bin_prov.rn-1                          AS hist_count_card_bin_prov_num 
       ,card_bin_city.card_bin_city 
       ,card_bin_city.rn-1                          AS hist_count_card_bin_city_num 
       ,card_mobile_prov.card_mobile_prov 
       ,card_mobile_prov.rn-1                       AS hist_count_card_mobile_prov_num 
       ,card_mobile_city.card_mobile_city 
       ,card_mobile_city.rn-1                       AS hist_count_card_mobile_city_num 
       ,card_cert_prov.card_cert_prov 
       ,card_cert_prov.rn-1                         AS hist_count_card_cert_prov_num 
       ,card_cert_city.card_cert_city 
       ,card_cert_city.rn-1                         AS hist_count_card_cert_city_num 
       ,is_one_people.is_one_people 
       ,is_one_people.rn-1                          AS hist_count_is_one_people_num 
       ,operation_channel.operation_channel 
       ,operation_channel.rn-1                      AS hist_count_operation_channel_num 
       ,pay_scene.pay_scene 
       ,pay_scene.rn-1                              AS hist_count_pay_scene_num 
       ,amt.amt 
       ,amt.rn-1                                    AS hist_count_amt_num 
       ,is_peer_pay.is_peer_pay 
       ,is_peer_pay.rn-1                            AS hist_count_is_peer_pay_num 
       ,income_card_no.income_card_no 
       ,income_card_no.rn-1                         AS hist_count_income_card_no_num 
       ,income_card_cert_no.income_card_cert_no 
       ,income_card_cert_no.rn-1                    AS hist_count_income_card_cert_no_num 
       ,income_card_mobile.income_card_mobile 
       ,income_card_mobile.rn-1                     AS hist_count_income_card_mobile_num 
       ,income_card_bank_code.income_card_bank_code 
       ,income_card_bank_code.rn-1                  AS hist_count_income_card_bank_code_num 
       ,province.province 
       ,province.rn-1                               AS hist_count_province_num 
       ,city.city 
       ,city.rn-1                                   AS hist_count_city_num 
       ,s.gmt_datetime 
   FROM (SELECT * 
           FROM all_data_encoding_train_testa_testb 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )s 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,user_id 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , user_id ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )user_id 
     ON s.event_id = user_id.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,client_ip 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , client_ip ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )client_ip 
     ON s.event_id = client_ip.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,network 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , network ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )network 
     ON s.event_id = network.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,device_sign 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , device_sign ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )device_sign 
     ON s.event_id = device_sign.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,info_1 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , info_1 ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )info_1 
     ON s.event_id = info_1.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,info_2 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , info_2 ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )info_2 
     ON s.event_id = info_2.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,ip_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , ip_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )ip_prov 
     ON s.event_id = ip_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,ip_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , ip_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )ip_city 
     ON s.event_id = ip_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,mobile_oper_platform 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , mobile_oper_platform ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )mobile_oper_platform 
     ON s.event_id = mobile_oper_platform.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,version 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , version ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )version 
     ON s.event_id = version.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_cert_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_cert_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_cert_no 
     ON s.event_id = card_cert_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,cert_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , cert_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )cert_prov 
     ON s.event_id = cert_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,cert_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , cert_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )cert_city 
     ON s.event_id = cert_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_bin_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_bin_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_bin_prov 
     ON s.event_id = card_bin_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_bin_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_bin_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_bin_city 
     ON s.event_id = card_bin_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_mobile_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_mobile_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_mobile_prov 
     ON s.event_id = card_mobile_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_mobile_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_mobile_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_mobile_city 
     ON s.event_id = card_mobile_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_cert_prov 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_cert_prov ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_cert_prov 
     ON s.event_id = card_cert_prov.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,card_cert_city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , card_cert_city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )card_cert_city 
     ON s.event_id = card_cert_city.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,is_one_people 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , is_one_people ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )is_one_people 
     ON s.event_id = is_one_people.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,operation_channel 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , operation_channel ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )operation_channel 
     ON s.event_id = operation_channel.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,pay_scene 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , pay_scene ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )pay_scene 
     ON s.event_id = pay_scene.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,amt 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , amt ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )amt 
     ON s.event_id = amt.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,is_peer_pay 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , is_peer_pay ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )is_peer_pay 
     ON s.event_id = is_peer_pay.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,income_card_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , income_card_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )income_card_no 
     ON s.event_id = income_card_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,income_card_cert_no 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , income_card_cert_no ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )income_card_cert_no 
     ON s.event_id = income_card_cert_no.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,income_card_mobile 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , income_card_mobile ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )income_card_mobile 
     ON s.event_id = income_card_mobile.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,income_card_bank_code 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , income_card_bank_code ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )income_card_bank_code 
     ON s.event_id = income_card_bank_code.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,province 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , province ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )province 
     ON s.event_id = province.event_id 
 LEFT OUTER JOIN (SELECT event_id 
                        ,opposing_id 
                        ,city 
                        ,gmt_datetime 
                        ,RANK() OVER ( PARTITION BY opposing_id , city ORDER BY gmt_datetime ) rn 
                    FROM all_data_encoding_train_testa_testb 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                     AND opposing_id IS NOT NULL 
                 )city 
     ON s.event_id = city.event_id;



-- #################################################################################
-- 历史类特征 基于 user_id 和 event_id
-- #################################################################################


CREATE TABLE IF NOT EXISTS kevin_user_id_date_gap_count AS
  SELECT t.event_id 
       ,t.user_id 
       ,t.gmt_datetime 
       ,t.gmt_datetime_last 
       ,DATEDIFF(gmt_datetime ,gmt_datetime_last ,'hh') AS gmt_time_gap 
       ,( CASE WHEN ( t.rn-1 
                    ) = 0 THEN 0.001 
               ELSE ( t.rn-1 
                    ) 
           END 
        )                                               AS hist_user_id_count_num2 
   FROM (SELECT event_id 
               ,user_id 
               ,gmt_datetime 
               ,LAG(gmt_datetime ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) gmt_datetime_last 
               ,RANK() OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) rn                              -- ,
         --     row_number() over(partition by user_id order by gmt_datetime ) rn1
           FROM kevin_id_all_win_features 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )t
;


--  ====================================================================================================
CREATE TABLE IF NOT EXISTS kevin_opposing_id_date_gap_count AS
  SELECT t.event_id 
       ,t.opposing_id 
       ,t.gmt_datetime 
       ,t.gmt_datetime_last 
       ,DATEDIFF(gmt_datetime ,gmt_datetime_last ,'hh') AS gmt_time_gap 
       ,( CASE WHEN ( t.rn-1 
                    ) = 0 THEN 0.001 
               ELSE ( t.rn-1 
                    ) 
           END 
        )                                               AS hist_opposing_id_count_num2 
   FROM (SELECT event_id 
               ,opposing_id 
               ,gmt_datetime 
               ,LAG(gmt_datetime ,1) OVER ( PARTITION BY opposing_id ORDER BY gmt_datetime ) gmt_datetime_last 
               ,RANK() OVER ( PARTITION BY opposing_id ORDER BY gmt_datetime ) rn                              -- ,
         --     row_number() over(partition by opposing_id order by gmt_datetime ) rn1
           FROM kevin_id_all_win_features 
          WHERE source IN ( 'train' , 'test' , 'testb' ) 
        )t
;


--  =====================================================================================
CREATE TABLE IF NOT EXISTS kevin_newb_prec_user_id_all_data AS
  SELECT s.event_id 
       ,s.user_id 
       ,s.gmt_datetime_last 
       ,s.hist_user_id_count_num2 
       --  ,t.hist_count_user_id_num / s.hist_user_id_count_num2              AS hist_prec_user_id_user_id
       ,t.hist_count_client_ip_num / s.hist_user_id_count_num2             AS hist_prec_user_id_client_ip 
       ,t.hist_count_network_num / s.hist_user_id_count_num2               AS hist_prec_user_id_network 
       ,t.hist_count_device_sign_num / s.hist_user_id_count_num2           AS hist_prec_user_id_device_sign 
       ,t.hist_count_info_1_num / s.hist_user_id_count_num2                AS hist_prec_user_id_info_1 
       ,t.hist_count_info_2_num / s.hist_user_id_count_num2                AS hist_prec_user_id_info_2 
       ,t.hist_count_ip_prov_num / s.hist_user_id_count_num2               AS hist_prec_user_id_ip_prov 
       ,t.hist_count_ip_city_num / s.hist_user_id_count_num2               AS hist_prec_user_id_ip_city 
       ,t.hist_count_mobile_oper_platform_num / s.hist_user_id_count_num2  AS hist_prec_user_id_mobile_oper_platform 
       ,t.hist_count_version_num / s.hist_user_id_count_num2               AS hist_prec_user_id_version 
       ,t.hist_count_card_cert_no_num / s.hist_user_id_count_num2          AS hist_prec_user_id_card_cert_no 
       ,t.hist_count_cert_prov_num / s.hist_user_id_count_num2             AS hist_prec_user_id_cert_prov 
       ,t.hist_count_cert_city_num / s.hist_user_id_count_num2             AS hist_prec_user_id_cert_city 
       ,t.hist_count_card_bin_prov_num / s.hist_user_id_count_num2         AS hist_prec_user_id_card_bin_prov 
       ,t.hist_count_card_bin_city_num / s.hist_user_id_count_num2         AS hist_prec_user_id_card_bin_city 
       ,t.hist_count_card_mobile_prov_num / s.hist_user_id_count_num2      AS hist_prec_user_id_card_mobile_prov 
       ,t.hist_count_card_mobile_city_num / s.hist_user_id_count_num2      AS hist_prec_user_id_card_mobile_city 
       ,t.hist_count_card_cert_prov_num / s.hist_user_id_count_num2        AS hist_prec_user_id_card_cert_prov 
       ,t.hist_count_card_cert_city_num / s.hist_user_id_count_num2        AS hist_prec_user_id_card_cert_city 
       ,t.hist_count_is_one_people_num / s.hist_user_id_count_num2         AS hist_prec_user_id_is_one_people 
       ,t.hist_count_operation_channel_num / s.hist_user_id_count_num2     AS hist_prec_user_id_operation_channel 
       ,t.hist_count_pay_scene_num / s.hist_user_id_count_num2             AS hist_prec_user_id_pay_scene 
       ,t.hist_count_amt_num / s.hist_user_id_count_num2                   AS hist_prec_user_id_amt 
       ,t.hist_count_is_peer_pay_num / s.hist_user_id_count_num2           AS hist_prec_user_id_is_peer_pay 
       ,t.hist_count_opposing_id_num / s.hist_user_id_count_num2           AS hist_prec_user_id_opposing_id 
       ,t.hist_count_income_card_no_num / s.hist_user_id_count_num2        AS hist_prec_user_id_income_card_no 
       ,t.hist_count_income_card_cert_no_num / s.hist_user_id_count_num2   AS hist_prec_user_id_income_card_cert_no 
       ,t.hist_count_income_card_mobile_num / s.hist_user_id_count_num2    AS hist_prec_user_id_income_card_mobile 
       ,t.hist_count_income_card_bank_code_num / s.hist_user_id_count_num2 AS hist_prec_user_id_income_card_bank_code 
       ,t.hist_count_province_num / s.hist_user_id_count_num2              AS hist_prec_user_id_province 
       ,t.hist_count_city_num / s.hist_user_id_count_num2                  AS hist_prec_user_id_city 
   FROM kevin_newb_user_id_date_gap_count s 
 LEFT OUTER JOIN kevin_newb_user_id_date_hist_count t 
     ON t.event_id = s.event_id
;


--  ============================================================
CREATE TABLE IF NOT EXISTS kevin_newb_prec_opposing_id_all_data AS
  SELECT s.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime_last 
       ,s.hist_opposing_id_count_num2 
       ,t.hist_count_user_id_num / s.hist_opposing_id_count_num2               AS hist_prec_opposing_id_user_id 
       ,t.hist_count_client_ip_num / s.hist_opposing_id_count_num2             AS hist_prec_opposing_id_client_ip 
       ,t.hist_count_network_num / s.hist_opposing_id_count_num2               AS hist_prec_opposing_id_network 
       ,t.hist_count_device_sign_num / s.hist_opposing_id_count_num2           AS hist_prec_opposing_id_device_sign 
       ,t.hist_count_info_1_num / s.hist_opposing_id_count_num2                AS hist_prec_opposing_id_info_1 
       ,t.hist_count_info_2_num / s.hist_opposing_id_count_num2                AS hist_prec_opposing_id_info_2 
       ,t.hist_count_ip_prov_num / s.hist_opposing_id_count_num2               AS hist_prec_opposing_id_ip_prov 
       ,t.hist_count_ip_city_num / s.hist_opposing_id_count_num2               AS hist_prec_opposing_id_ip_city 
       ,t.hist_count_mobile_oper_platform_num / s.hist_opposing_id_count_num2  AS hist_prec_opposing_id_mobile_oper_platform 
       ,t.hist_count_version_num / s.hist_opposing_id_count_num2               AS hist_prec_opposing_id_version 
       ,t.hist_count_card_cert_no_num / s.hist_opposing_id_count_num2          AS hist_prec_opposing_id_card_cert_no 
       ,t.hist_count_cert_prov_num / s.hist_opposing_id_count_num2             AS hist_prec_opposing_id_cert_prov 
       ,t.hist_count_cert_city_num / s.hist_opposing_id_count_num2             AS hist_prec_opposing_id_cert_city 
       ,t.hist_count_card_bin_prov_num / s.hist_opposing_id_count_num2         AS hist_prec_opposing_id_card_bin_prov 
       ,t.hist_count_card_bin_city_num / s.hist_opposing_id_count_num2         AS hist_prec_opposing_id_card_bin_city 
       ,t.hist_count_card_mobile_prov_num / s.hist_opposing_id_count_num2      AS hist_prec_opposing_id_card_mobile_prov 
       ,t.hist_count_card_mobile_city_num / s.hist_opposing_id_count_num2      AS hist_prec_opposing_id_card_mobile_city 
       ,t.hist_count_card_cert_prov_num / s.hist_opposing_id_count_num2        AS hist_prec_opposing_id_card_cert_prov 
       ,t.hist_count_card_cert_city_num / s.hist_opposing_id_count_num2        AS hist_prec_opposing_id_card_cert_city 
       ,t.hist_count_is_one_people_num / s.hist_opposing_id_count_num2         AS hist_prec_opposing_id_is_one_people 
       ,t.hist_count_operation_channel_num / s.hist_opposing_id_count_num2     AS hist_prec_opposing_id_operation_channel 
       ,t.hist_count_pay_scene_num / s.hist_opposing_id_count_num2             AS hist_prec_opposing_id_pay_scene 
       ,t.hist_count_amt_num / s.hist_opposing_id_count_num2                   AS hist_prec_opposing_id_amt 
       ,t.hist_count_is_peer_pay_num / s.hist_opposing_id_count_num2           AS hist_prec_opposing_id_is_peer_pay 
       --  ,t.hist_count_opposing_id_num / s.hist_opposing_id_count_num2           AS hist_prec_opposing_id_opposing_id 
       ,t.hist_count_income_card_no_num / s.hist_opposing_id_count_num2        AS hist_prec_opposing_id_income_card_no 
       ,t.hist_count_income_card_cert_no_num / s.hist_opposing_id_count_num2   AS hist_prec_opposing_id_income_card_cert_no 
       ,t.hist_count_income_card_mobile_num / s.hist_opposing_id_count_num2    AS hist_prec_opposing_id_income_card_mobile 
       ,t.hist_count_income_card_bank_code_num / s.hist_opposing_id_count_num2 AS hist_prec_opposing_id_income_card_bank_code 
       ,t.hist_count_province_num / s.hist_opposing_id_count_num2              AS hist_prec_opposing_id_province 
       ,t.hist_count_city_num / s.hist_opposing_id_count_num2                  AS hist_prec_opposing_id_city 
   FROM kevin_newb_opposing_id_date_gap_count s 
 LEFT OUTER JOIN kevin_newb_opposing_id_date_hist_count t 
     ON t.event_id = s.event_id
;


-- #############################################################################
-- 合并两张表
-- #############################################################################
CREATE TABLE IF NOT EXISTS kevin_newb_hist_pect_all_0819 AS
  SELECT t1.event_id 
       --,t1.hist_prec_user_id_user_i                    AS hist_prec_user_id 
       ,t1.hist_prec_user_id_client_ip                 AS hist_prec_client_ip 
       ,t1.hist_prec_user_id_network                   AS hist_prec_network 
       ,t1.hist_prec_user_id_device_sign               AS hist_prec_device_sign 
       ,t1.hist_prec_user_id_info_1                    AS hist_prec_info_1 
       ,t1.hist_prec_user_id_info_2                    AS hist_prec_info_2 
       ,t1.hist_prec_user_id_ip_prov                   AS hist_prec_ip_prov 
       ,t1.hist_prec_user_id_ip_city                   AS hist_prec_ip_city 
       ,t1.hist_prec_user_id_mobile_oper_platform      AS hist_prec_mobile_oper_platform 
       ,t1.hist_prec_user_id_version                   AS hist_prec_version 
       ,t1.hist_prec_user_id_card_cert_no              AS hist_prec_card_cert_no 
       ,t1.hist_prec_user_id_cert_prov                 AS hist_prec_cert_prov 
       ,t1.hist_prec_user_id_cert_city                 AS hist_prec_cert_city 
       ,t1.hist_prec_user_id_card_bin_prov             AS hist_prec_card_bin_prov 
       ,t1.hist_prec_user_id_card_bin_city             AS hist_prec_card_bin_city 
       ,t1.hist_prec_user_id_card_mobile_prov          AS hist_prec_card_mobile_prov 
       ,t1.hist_prec_user_id_card_mobile_city          AS hist_prec_card_mobile_city 
       ,t1.hist_prec_user_id_card_cert_prov            AS hist_prec_card_cert_prov 
       ,t1.hist_prec_user_id_card_cert_city            AS hist_prec_card_cert_city 
       ,t1.hist_prec_user_id_is_one_people             AS hist_prec_is_one_people 
       ,t1.hist_prec_user_id_operation_channel         AS hist_prec_operation_channel 
       ,t1.hist_prec_user_id_pay_scene                 AS hist_prec_pay_scene 
       ,t1.hist_prec_user_id_amt                       AS hist_prec_amt 
       ,t1.hist_prec_user_id_is_peer_pay               AS hist_prec_is_peer_pay 
       ,t1.hist_prec_user_id_opposing_id               AS hist_prec_opposing_id 
       ,t1.hist_prec_user_id_income_card_no            AS hist_prec_income_card_no 
       ,t1.hist_prec_user_id_income_card_cert_no       AS hist_prec_income_card_cert_no 
       ,t1.hist_prec_user_id_income_card_mobile        AS hist_prec_income_card_mobile 
       ,t1.hist_prec_user_id_income_card_bank_code     AS hist_prec_income_card_bank_code 
       ,t1.hist_prec_user_id_province                  AS hist_prec_province 
       ,t1.hist_prec_user_id_city                      AS hist_prec_city 
       ,t2.hist_prec_opposing_id_user_id               AS hist_user_id_per 
       ,t2.hist_prec_opposing_id_client_ip             AS hist_client_ip_per 
       ,t2.hist_prec_opposing_id_network               AS hist_network_per 
       ,t2.hist_prec_opposing_id_device_sign           AS hist_device_sign_per 
       ,t2.hist_prec_opposing_id_info_1                AS hist_info_1_per 
       ,t2.hist_prec_opposing_id_info_2                AS hist_info_2_per 
       ,t2.hist_prec_opposing_id_ip_prov               AS hist_ip_prov_per 
       ,t2.hist_prec_opposing_id_ip_city               AS hist_ip_city_per 
       ,t2.hist_prec_opposing_id_mobile_oper_platform  AS hist_mobile_oper_platform_per 
       ,t2.hist_prec_opposing_id_version               AS hist_version_per 
       ,t2.hist_prec_opposing_id_card_cert_no          AS hist_card_cert_no_per 
       ,t2.hist_prec_opposing_id_cert_prov             AS hist_cert_prov_per 
       ,t2.hist_prec_opposing_id_cert_city             AS hist_cert_city_per 
       ,t2.hist_prec_opposing_id_card_bin_prov         AS hist_card_bin_prov_per 
       ,t2.hist_prec_opposing_id_card_bin_city         AS hist_card_bin_city_per 
       ,t2.hist_prec_opposing_id_card_mobile_prov      AS hist_card_mobile_prov_per 
       ,t2.hist_prec_opposing_id_card_mobile_city      AS hist_card_mobile_city_per 
       ,t2.hist_prec_opposing_id_card_cert_prov        AS hist_card_cert_prov_per 
       ,t2.hist_prec_opposing_id_card_cert_city        AS hist_card_cert_city_per 
       ,t2.hist_prec_opposing_id_is_one_people         AS hist_is_one_people_per 
       ,t2.hist_prec_opposing_id_operation_channel     AS hist_operation_channel_per 
       ,t2.hist_prec_opposing_id_pay_scene             AS hist_pay_scene_per 
       ,t2.hist_prec_opposing_id_amt                   AS hist_amt_per 
       ,t2.hist_prec_opposing_id_is_peer_pay           AS hist_is_peer_pay_per 
       --,t2.hist_prec_opposing_id_opposing_id           AS hist_opposing_id_per 
       ,t2.hist_prec_opposing_id_income_card_no        AS hist_income_card_no_per 
       ,t2.hist_prec_opposing_id_income_card_cert_no   AS hist_income_card_cert_no_per 
       ,t2.hist_prec_opposing_id_income_card_mobile    AS hist_income_card_mobile_per 
       ,t2.hist_prec_opposing_id_income_card_bank_code AS hist_income_card_bank_code_per 
       ,t2.hist_prec_opposing_id_province              AS hist_province_per 
       ,t2.hist_prec_opposing_id_city                  AS hist_city_per 
   FROM kevin_newb_prec_user_id_all_data t1 
 LEFT OUTER JOIN kevin_newb_prec_opposing_id_all_data t2 
     ON t1.event_id = t2.event_id
;