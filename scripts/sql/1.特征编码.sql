
-- 拼接数据
CREATE table all_data_out as 
SELECT *,'train' as source from atec_1000w_ins_data;

INSERT INTO TABLE all_data_out 
SELECT *,-1 as is_fraud, 'test' as source
from atec_1000w_oota_data;


INSERT INTO TABLE all_data_out 
SELECT *,-1 as is_fraud, 'testb' as source
from atec_1000w_ootb_data;


-- 抽取 所有字段id
CREATE TABLE IF NOT EXISTS all_data_id AS
  SELECT DISTINCT v.id 
   FROM (SELECT DISTINCT event_id AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT user_id AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT client_ip AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT network AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT device_sign AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT info_1 AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT info_2 AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT ip_prov AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT ip_city AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT mobile_oper_platform AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT version AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_cert_no AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT cert_prov AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT cert_city AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_bin_prov AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_bin_city AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_mobile_prov AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_mobile_city AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_cert_prov AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT card_cert_city AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT is_one_people AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT operation_channel AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT pay_scene AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT is_peer_pay AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT opposing_id AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT income_card_no AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT income_card_cert_no AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT income_card_mobile AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT income_card_bank_code AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT province AS id 
           FROM all_data 
         UNION ALL 
         SELECT DISTINCT city AS id 
           FROM all_data_out 
        )v 
  WHERE LENGTH(id) > 0
;


-- 对加密文字进行encoding
CREATE TABLE IF NOT EXISTS id_encoding AS
  SELECT ROW_NUMBER() OVER ( ORDER BY v.id DESC ) ip 
       ,* 
   FROM (SELECT DISTINCT id 
           FROM all_data_id 
        )v
;


-- 编码数据
CREATE TABLE IF NOT EXISTS all_data_encoding AS
  SELECT t1.gmt_occur 
       ,t1.amt 
       ,t1.dt 
       ,t1.is_fraud 
       ,t1.source 
       ,event_id.ip              AS event_id 
       ,user_id.ip               AS user_id 
       ,client_ip.ip             AS client_ip 
       ,network.ip               AS network 
       ,device_sign.ip           AS device_sign 
       ,info_1.ip                AS info_1 
       ,info_2.ip                AS info_2 
       ,ip_prov.ip               AS ip_prov 
       ,ip_city.ip               AS ip_city 
       ,mobile_oper_platform.ip  AS mobile_oper_platform 
       ,version.ip               AS version 
       ,card_cert_no.ip          AS card_cert_no 
       ,cert_prov.ip             AS cert_prov 
       ,cert_city.ip             AS cert_city 
       ,card_bin_prov.ip         AS card_bin_prov 
       ,card_bin_city.ip         AS card_bin_city 
       ,card_mobile_prov.ip      AS card_mobile_prov 
       ,card_mobile_city.ip      AS card_mobile_city 
       ,card_cert_prov.ip        AS card_cert_prov 
       ,card_cert_city.ip        AS card_cert_city 
       ,is_one_people.ip         AS is_one_people 
       ,operation_channel.ip     AS operation_channel 
       ,pay_scene.ip             AS pay_scene 
       ,is_peer_pay.ip           AS is_peer_pay 
       ,opposing_id.ip           AS opposing_id 
       ,income_card_no.ip        AS income_card_no 
       ,income_card_cert_no.ip   AS income_card_cert_no 
       ,income_card_mobile.ip    AS income_card_mobile 
       ,income_card_bank_code.ip AS income_card_bank_code 
       ,province.ip              AS province 
       ,city.ip                  AS city 
   FROM all_data t1 
 LEFT OUTER JOIN id_encoding event_id 
     ON t1.event_id = event_id.id 
 LEFT OUTER JOIN id_encoding user_id 
     ON t1.user_id = user_id.id 
 LEFT OUTER JOIN id_encoding client_ip 
     ON t1.client_ip = client_ip.id 
 LEFT OUTER JOIN id_encoding network 
     ON t1.network = network.id 
 LEFT OUTER JOIN id_encoding device_sign 
     ON t1.device_sign = device_sign.id 
 LEFT OUTER JOIN id_encoding info_1 
     ON t1.info_1 = info_1.id 
 LEFT OUTER JOIN id_encoding info_2 
     ON t1.info_2 = info_2.id 
 LEFT OUTER JOIN id_encoding ip_prov 
     ON t1.ip_prov = ip_prov.id 
 LEFT OUTER JOIN id_encoding ip_city 
     ON t1.ip_city = ip_city.id 
 LEFT OUTER JOIN id_encoding mobile_oper_platform 
     ON t1.mobile_oper_platform = mobile_oper_platform.id 
 LEFT OUTER JOIN id_encoding version 
     ON t1.version = version.id 
 LEFT OUTER JOIN id_encoding card_cert_no 
     ON t1.card_cert_no = card_cert_no.id 
 LEFT OUTER JOIN id_encoding cert_prov 
     ON t1.cert_prov = cert_prov.id 
 LEFT OUTER JOIN id_encoding cert_city 
     ON t1.cert_city = cert_city.id 
 LEFT OUTER JOIN id_encoding card_bin_prov 
     ON t1.card_bin_prov = card_bin_prov.id 
 LEFT OUTER JOIN id_encoding card_bin_city 
     ON t1.card_bin_city = card_bin_city.id 
 LEFT OUTER JOIN id_encoding card_mobile_prov 
     ON t1.card_mobile_prov = card_mobile_prov.id 
 LEFT OUTER JOIN id_encoding card_mobile_city 
     ON t1.card_mobile_city = card_mobile_city.id 
 LEFT OUTER JOIN id_encoding card_cert_prov 
     ON t1.card_cert_prov = card_cert_prov.id 
 LEFT OUTER JOIN id_encoding card_cert_city 
     ON t1.card_cert_city = card_cert_city.id 
 LEFT OUTER JOIN id_encoding is_one_people 
     ON t1.is_one_people = is_one_people.id 
 LEFT OUTER JOIN id_encoding operation_channel 
     ON t1.operation_channel = operation_channel.id 
 LEFT OUTER JOIN id_encoding pay_scene 
     ON t1.pay_scene = pay_scene.id 
 LEFT OUTER JOIN id_encoding is_peer_pay 
     ON t1.is_peer_pay = is_peer_pay.id 
 LEFT OUTER JOIN id_encoding opposing_id 
     ON t1.opposing_id = opposing_id.id 
 LEFT OUTER JOIN id_encoding income_card_no 
     ON t1.income_card_no = income_card_no.id 
 LEFT OUTER JOIN id_encoding income_card_cert_no 
     ON t1.income_card_cert_no = income_card_cert_no.id 
 LEFT OUTER JOIN id_encoding income_card_mobile 
     ON t1.income_card_mobile = income_card_mobile.id 
 LEFT OUTER JOIN id_encoding income_card_bank_code 
     ON t1.income_card_bank_code = income_card_bank_code.id 
 LEFT OUTER JOIN id_encoding province 
     ON t1.province = province.id 
 LEFT OUTER JOIN id_encoding city 
     ON t1.city = city.id
;


