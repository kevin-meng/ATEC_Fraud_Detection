-- 计算评分

CREATE TABLE IF NOT EXISTS train_testa_testb_with_score_out AS
SELECT a.event_id 
      ,a.user_id 
      ,a.score 
      ,a.gmt_datetime 
      ,c.score_over00_max_last
      ,c.score_over00_05_max_last
      ,c.score_over00_10_max_last
      ,c.score_over00_50_max_last
   
      ,c.score_over00_sum_last
      ,c.score_over00_05_sum_last
      ,c.score_over00_10_sum_last 
      ,c.score_over00_50_sum_last 
      
  FROM all1_data_encoding_train_testa_testb_with_score a 
LEFT OUTER JOIN (SELECT b.* 
                       ,LAG(b.score_over00_max ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_max_last 
                       ,LAG(b.score_over00_05_max ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_05_max_last
                       ,LAG(b.score_over00_10_max ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_10_max_last
                       ,LAG(b.score_over00_50_max ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_50_max_last 
                 
                       ,LAG(b.score_over00_sum ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_sum_last 
                       ,LAG(b.score_over00_05_sum ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_05_sum_last
                       ,LAG(b.score_over00_10_sum ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_10_sum_last                  
                       ,LAG(b.score_over00_50_sum ,1) OVER ( PARTITION BY user_id ORDER BY gmt_datetime ) score_over00_50_sum_last                  
                 
                   FROM (SELECT v.* 
                               ,MAX(v.score_over00_max_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime )                                           AS score_over00_max 
                               ,MAX(v.score_over00_max_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 5 PRECEDING AND 0 FOLLOWING ) AS score_over00_05_max 
                               ,MAX(v.score_over00_max_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 10 PRECEDING AND 0 FOLLOWING ) AS score_over00_10_max 
                               ,MAX(v.score_over00_max_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 50 PRECEDING AND 0 FOLLOWING ) AS score_over00_50_max 
                               
                            ,SUM(v.score_over00_sum_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime )                                           AS score_over00_sum 
                               ,SUM(v.score_over00_sum_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 5 PRECEDING AND 0 FOLLOWING ) AS score_over00_05_sum 
                               ,SUM(v.score_over00_sum_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 10 PRECEDING AND 0 FOLLOWING ) AS score_over00_10_sum 
                               ,SUM(v.score_over00_sum_per) OVER ( PARTITION BY v.user_id ORDER BY v.gmt_datetime ROWS BETWEEN 50 PRECEDING AND 0 FOLLOWING ) AS score_over00_50_sum 
                
                           FROM (SELECT user_id 
                                       ,gmt_datetime
                                    ,SUM(score)   AS score_over00_sum_per
                                       ,MAX(score)   AS score_over00_max_per 
                                   FROM all1_data_encoding_train_testa_testb_with_score 
                                 GROUP BY user_id 
                                         ,gmt_datetime 
                                )v 
                        )b 
                )c 
    ON a.user_id = c.user_id 
   AND a.gmt_datetime = c.gmt_datetime
;