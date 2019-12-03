
-- ###############################################################
-- 1天
-- ###############################################################
CREATE TABLE IF NOT EXISTS kevin_winFea_by_oppid_all_distinct_count_1d AS
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-06','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-07','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-08','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-09','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-10','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-11','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-12','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-13','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-14','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-15','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-16','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-17','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-18','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-19','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-20','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-21','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-22','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-23','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-24','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-25','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-26','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-27','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-28','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-29','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-30','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-01','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-02','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-03','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-04','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-06','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-07','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-08','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-09','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-10','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-11','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-12','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-13','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-14','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-15','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-16','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-17','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-18','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-19','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-20','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-21','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-22','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-23','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-24','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-25','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-26','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-27','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-28','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-29','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-30','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-31','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-01','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-02','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-03','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-04','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-06','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-07','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-08','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-09','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-10','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-11','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-12','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-13','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-14','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-15','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-16','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-17','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-18','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-19','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-20','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-21','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-22','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-23','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-24','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-25','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-26','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-27','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-28','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-29','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-30','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-31','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-01','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-02','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-03','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-04','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-06','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-07','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-08','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-09','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-10','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-11','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-12','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-13','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-14','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-15','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-16','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-17','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-18','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-19','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-20','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-21','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-22','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-23','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-24','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-25','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-26','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-27','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-28','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-01','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-02','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-03','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-04','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-05','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_1d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_1_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_1_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-06','yyyy-mm-dd'), -1, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;


-- ###############################################################
-- 3天
-- ###############################################################

CREATE TABLE IF NOT EXISTS kevin_winFea_by_oppid_all_distinct_count_3d AS
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-06','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-07','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-08','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-09','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-10','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-11','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-12','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-13','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-14','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-15','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-16','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-17','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-18','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-19','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-20','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-21','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-22','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-23','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-24','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-25','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-26','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-27','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-28','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-29','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-30','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-01','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-02','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-03','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-04','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-06','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-07','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-08','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-09','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-10','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-11','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-12','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-13','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-14','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-15','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-16','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-17','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-18','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-19','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-20','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-21','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-22','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-23','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-24','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-25','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-26','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-27','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-28','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-29','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-30','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-31','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-01','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-02','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-03','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-04','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-06','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-07','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-08','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-09','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-10','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-11','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-12','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-13','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-14','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-15','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-16','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-17','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-18','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-19','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-20','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-21','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-22','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-23','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-24','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-25','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-26','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-27','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-28','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-29','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-30','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-31','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-01','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-02','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-03','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-04','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-06','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-07','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-08','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-09','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-10','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-11','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-12','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-13','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-14','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-15','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-16','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-17','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-18','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-19','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-20','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-21','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-22','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-23','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-24','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-25','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-26','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-27','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-28','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-01','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-02','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-03','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-04','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-05','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_3d 
SELECT v.event_id,
            s.win_oppid_card_mobile_prov_3_num,
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_mobile_prov) AS win_oppid_card_mobile_prov_3_num,
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-06','yyyy-mm-dd'), -3, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    



-- ###############################################################
-- 7天
-- ###############################################################

CREATE TABLE IF NOT EXISTS kevin_winFea_by_oppid_all_distinct_count_7d AS
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-06','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-07','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-08','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-09','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-10','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-11','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-12','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-13','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-14','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-15','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-16','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-17','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-18','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-19','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-20','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-21','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-22','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-23','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-24','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-25','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-26','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-27','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-28','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-29','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-09-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-09-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-09-30','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-01','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-02','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-03','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-04','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-06','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-07','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-08','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-09','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-10','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-11','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-12','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-13','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-14','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-15','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-16','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-17','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-18','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-19','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-20','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-21','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-22','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-23','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-24','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-25','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-26','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-27','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-28','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-29','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-30','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-10-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-10-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-10-31','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-01','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-02','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-03','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-04','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2017-11-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2017-11-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2017-11-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-06','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-07','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-08','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-09','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-10','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-11','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-12','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-13','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-14','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-15','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-16','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-17','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-18','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-19','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-20','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-21','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-22','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-23','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-24','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-25','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-26','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-27','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-28','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-29','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-29','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-29','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-30','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-30','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-30','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-01-31','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-01-31','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-01-31','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-01','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-02','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-03','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-04','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-06','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-07','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-07','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-07','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-08','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-08','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-08','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-09','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-09','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-09','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-10','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-10','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-10','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-11','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-11','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-11','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-12','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-12','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-12','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-13','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-13','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-13','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-14','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-14','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-14','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-15','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-15','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-15','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-16','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-16','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-16','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-17','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-17','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-17','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-18','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-18','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-18','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-19','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-19','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-19','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-20','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-20','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-20','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-21','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-21','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-21','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-22','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-22','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-22','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-23','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-23','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-23','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-24','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-24','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-24','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-25','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-25','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-25','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-26','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-26','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-26','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-27','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-27','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-27','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-02-28','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-02-28','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-02-28','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-01','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-01','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-01','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-02','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-02','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-02','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-03','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-03','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-03','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-04','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-04','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-04','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-05','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-05','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-05','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
INSERT INTO TABLE kevin_winFea_by_oppid_all_distinct_count_7d 
SELECT v.event_id,
            s.win_oppid_card_bin_prov_7_num,
            s.win_oppid_card_mobile_city_7_num
    FROM(
        SELECT 
            event_id,opposing_id
        FROM kevin_new_id_all_win_features    
        WHERE gmt_date=to_date('2018-03-06','yyyy-mm-dd')
    ) v 
    LEFT OUTER JOIN (
        SELECT 
            opposing_id,
            count(DISTINCT card_bin_prov) AS win_oppid_card_bin_prov_7_num,
            count(DISTINCT card_mobile_city) AS win_oppid_card_mobile_city_7_num
        FROM  kevin_new_id_all_win_features
        WHERE  gmt_date<to_date('2018-03-06','yyyy-mm-dd') and gmt_date>=dateadd(to_date('2018-03-06','yyyy-mm-dd'), -7, 'dd')
        GROUP BY opposing_id
    )s
    ON v.opposing_id = s.opposing_id;
    
