-- 当前一小时内交易次数  by opposing_id
CREATE TABLE IF NOT EXISTS kevin_oppid_gmt_1h_count AS
  SELECT v.event_id 
       ,s.opposing_id 
       ,s.gmt_datetime 
       ,s.win_oppid_gmt_1h_num 
   FROM (SELECT * 
           FROM kevin_new_id_all_win_features 
          WHERE source IN ( 'train' , 'test', 'testb' ) 
        )v 
 LEFT OUTER JOIN (SELECT opposing_id 
                        ,gmt_datetime 
                        ,COUNT(*)     AS win_oppid_gmt_1h_num 
                    FROM kevin_new_id_all_win_features 
                   WHERE source IN ( 'train' , 'test' , 'testb' ) 
                  GROUP BY opposing_id 
                          ,gmt_datetime 
                 )s 
     ON v.opposing_id = s.opposing_id 
    AND v.gmt_datetime = s.gmt_datetime
;


--缺失值填充 
-- 直接写报错，需要先增加列
DROP TABLE kevin_new_winfea_distinct_gmt_count_1d_fillna
;
CREATE TABLE kevin_new_winfea_oppid_gmt_count_1d_fillna AS
  SELECT * 
       ,( CASE WHEN win_gmt_occur_1_num IS NULL THEN 0.001 
               ELSE win_gmt_occur_1_num 
           END 
        ) AS win_oppid_gmt_occur_1_num_fillna 
       ,( CASE WHEN win_gmt_date_1_num IS NULL THEN 0.001 
               ELSE win_gmt_date_1_num 
           END 
        ) AS win_oppid_gmt_date_1_num_fillna 
       ,( CASE WHEN win_gmt_occur_1_num IS NULL THEN 0 
               ELSE win_gmt_occur_1_num 
           END 
        ) AS win_oppid_gmt_occur_1_num_zero 
       ,( CASE WHEN win_gmt_date_1_num IS NULL THEN 0 
               ELSE win_gmt_date_1_num 
           END 
        ) AS win_oppid_gmt_date_1_num_zero 
   FROM kevin_new_winFea_oppid_gmt_count_1d
;
CREATE TABLE kevin_new_winfea_oppid_gmt_count_3d_fillna AS
  SELECT * 
       ,( CASE WHEN win_gmt_occur_3_num IS NULL THEN 0.001 
               ELSE win_gmt_occur_3_num 
           END 
        ) AS win_oppid_gmt_occur_3_num_fillna 
       ,( CASE WHEN win_gmt_date_3_num IS NULL THEN 0.001 
               ELSE win_gmt_date_3_num 
           END 
        ) AS win_oppid_gmt_date_3_num_fillna 
       ,( CASE WHEN win_gmt_occur_3_num IS NULL THEN 0 
               ELSE win_gmt_occur_3_num 
           END 
        ) AS win_oppid_gmt_occur_3_num_zero 
       ,( CASE WHEN win_gmt_date_3_num IS NULL THEN 0 
               ELSE win_gmt_date_3_num 
           END 
        ) AS win_oppid_gmt_date_3_num_zero 
   FROM kevin_new_winFea_oppid_gmt_count_3d
;
CREATE TABLE kevin_new_winfea_oppid_gmt_count_5d_fillna AS
  SELECT * 
       ,( CASE WHEN win_gmt_occur_5_num IS NULL THEN 0.001 
               ELSE win_gmt_occur_5_num 
           END 
        ) AS win_oppid_gmt_occur_5_num_fillna 
       ,( CASE WHEN win_gmt_date_5_num IS NULL THEN 0.001 
               ELSE win_gmt_date_5_num 
           END 
        ) AS win_oppid_gmt_date_5_num_fillna 
       ,( CASE WHEN win_gmt_occur_5_num IS NULL THEN 0 
               ELSE win_gmt_occur_5_num 
           END 
        ) AS win_oppid_gmt_occur_5_num_zero 
       ,( CASE WHEN win_gmt_date_5_num IS NULL THEN 0 
               ELSE win_gmt_date_5_num 
           END 
        ) AS win_oppid_gmt_date_5_num_zero 
   FROM kevin_new_winFea_oppid_gmt_count_5d
;
CREATE TABLE kevin_new_winfea_oppid_gmt_count_7d_fillna AS
  SELECT * 
       ,( CASE WHEN win_gmt_occur_7_num IS NULL THEN 0.001 
               ELSE win_gmt_occur_7_num 
           END 
        ) AS win_oppid_gmt_occur_7_num_fillna 
       ,( CASE WHEN win_gmt_date_7_num IS NULL THEN 0.001 
               ELSE win_gmt_date_7_num 
           END 
        ) AS win_oppid_gmt_date_7_num_fillna 
       ,( CASE WHEN win_gmt_occur_7_num IS NULL THEN 0 
               ELSE win_gmt_occur_7_num 
           END 
        ) AS win_oppid_gmt_occur_7_num_zero 
       ,( CASE WHEN win_gmt_date_7_num IS NULL THEN 0 
               ELSE win_gmt_date_7_num 
           END 
        ) AS win_oppid_gmt_date_7_num_zero 
   FROM kevin_new_winFea_oppid_gmt_count_7d
;

-- ********************************************
-- 计算做差特征
CREATE TABLE IF NOT EXISTS kevin_win_oppid_avg_nday_now AS
  SELECT s.* 
       ,( s.win_oppid_count_1_num_zero / s.win_oppid_gmt_occur_1_num_fillna-s.win_oppid_gmt_1h_num 
        ) AS win_avg_1d_now_num 
       ,( s.win_oppid_count_3_num_zero / s.win_oppid_gmt_occur_3_num_fillna-s.win_oppid_gmt_1h_num 
        ) AS win_avg_3d_now_num 
       ,( s.win_oppid_count_5_num_zero / s.win_oppid_gmt_occur_5_num_fillna-s.win_oppid_gmt_1h_num 
        ) AS win_avg_5d_now_num 
       ,( s.win_oppid_count_7_num_zero / s.win_oppid_gmt_occur_7_num_fillna-s.win_oppid_gmt_1h_num 
        ) AS win_avg_7d_now_num 
   FROM (SELECT v.event_id 
               ,v.opposing_id 
               ,v.win_oppid_gmt_1h_num 
               ,( CASE WHEN t1.win_count_1_num IS NULL THEN 0 
                       ELSE t1.win_count_1_num 
                   END 
                )                                   AS win_oppid_count_1_num_zero 
               ,( CASE WHEN t2.win_count_3_num IS NULL THEN 0 
                       ELSE t2.win_count_3_num 
                   END 
                )                                   AS win_oppid_count_3_num_zero 
               ,( CASE WHEN t3.win_count_5_num IS NULL THEN 0 
                       ELSE t3.win_count_5_num 
                   END 
                )                                   AS win_oppid_count_5_num_zero 
               ,( CASE WHEN t4.win_count_7_num IS NULL THEN 0 
                       ELSE t4.win_count_7_num 
                   END 
                )                                   AS win_oppid_count_7_num_zero 

               ,a1.win_oppid_gmt_occur_1_num_fillna 
               ,a1.win_oppid_gmt_date_1_num_fillna 
               ,a1.win_oppid_gmt_occur_1_num_zero 
               ,a1.win_oppid_gmt_date_1_num_zero 

               ,a2.win_oppid_gmt_occur_3_num_fillna 
               ,a2.win_oppid_gmt_date_3_num_fillna 
               ,a2.win_oppid_gmt_occur_3_num_zero 
               ,a2.win_oppid_gmt_date_3_num_zero 
 
               ,a3.win_oppid_gmt_occur_5_num_fillna 
               ,a3.win_oppid_gmt_date_5_num_fillna 
               ,a3.win_oppid_gmt_occur_5_num_zero 
               ,a3.win_oppid_gmt_date_5_num_zero 
               ,a4.win_oppid_gmt_occur_7_num_fillna 
               ,a4.win_oppid_gmt_date_7_num_fillna 
               ,a4.win_oppid_gmt_occur_7_num_zero 
               ,a4.win_oppid_gmt_date_7_num_zero 
           FROM kevin_oppid_gmt_1h_count v 
         LEFT OUTER JOIN kevin_new_winFea_by_oppid_all_count_1d t1 
             ON v.event_id = t1.event_id 
         LEFT OUTER JOIN kevin_new_winFea_by_oppid_all_count_3d t2 
             ON v.event_id = t2.event_id 
         LEFT OUTER JOIN kevin_new_winFea_by_oppid_all_count_5d t3 
             ON v.event_id = t3.event_id 
         LEFT OUTER JOIN kevin_new_winFea_by_oppid_all_count_7d t4 
             ON v.event_id = t4.event_id 
         LEFT OUTER JOIN kevin_new_winfea_oppid_gmt_count_1d_fillna a1 
             ON v.event_id = a1.event_id 
         LEFT OUTER JOIN kevin_new_winfea_oppid_gmt_count_3d_fillna a2 
             ON v.event_id = a2.event_id 
         LEFT OUTER JOIN kevin_new_winfea_oppid_gmt_count_5d_fillna a3 
             ON v.event_id = a3.event_id 
         LEFT OUTER JOIN kevin_new_winfea_oppid_gmt_count_7d_fillna a4 
             ON v.event_id = a4.event_id 
        )s
;
