
-- ##########################################################
-- 交叉熵特征  基于user_id 与 opposing_id 的历史特征
-- ##########################################################

CREATE TABLE IF NOT EXISTS train_log_feats_fillna AS
  SELECT event_id 
       -- ,new_is_fraud 
       ,LOG(2 ,( CASE WHEN hist_prec_card_bin_city <= 0 THEN NULL 
                      ELSE hist_prec_card_bin_city 
                  END 
               ) / ( CASE WHEN ( hist_card_bin_city_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_bin_city_per 
                      END 
                   )) AS log_hist_prec_card_bin_city 
       ,LOG(2 ,( CASE WHEN hist_prec_card_bin_prov <= 0 THEN NULL 
                      ELSE hist_prec_card_bin_prov 
                  END 
               ) / ( CASE WHEN ( hist_card_bin_prov_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_bin_prov_per 
                      END 
                   )) AS log_hist_prec_card_bin_prov 
       ,LOG(2 ,( CASE WHEN hist_prec_card_cert_city <= 0 THEN NULL 
                      ELSE hist_prec_card_cert_city 
                  END 
               ) / ( CASE WHEN ( hist_card_cert_city_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_cert_city_per 
                      END 
                   )) AS log_hist_prec_card_cert_city 
       ,LOG(2 ,( CASE WHEN hist_prec_card_cert_prov <= 0 THEN NULL 
                      ELSE hist_prec_card_cert_prov 
                  END 
               ) / ( CASE WHEN ( hist_card_cert_prov_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_cert_prov_per 
                      END 
                   )) AS log_hist_prec_card_cert_prov 
       ,LOG(2 ,( CASE WHEN hist_prec_card_cert_no <= 0 THEN NULL 
                      ELSE hist_prec_card_cert_no 
                  END 
               ) / ( CASE WHEN ( hist_card_cert_no_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_cert_no_per 
                      END 
                   )) AS log_hist_prec_card_cert_no 
       ,LOG(2 ,( CASE WHEN hist_prec_card_mobile_city <= 0 THEN NULL 
                      ELSE hist_prec_card_mobile_city 
                  END 
               ) / ( CASE WHEN ( hist_card_mobile_city_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_mobile_city_per 
                      END 
                   )) AS log_hist_prec_card_mobile_city 
       ,LOG(2 ,( CASE WHEN hist_prec_card_mobile_prov <= 0 THEN NULL 
                      ELSE hist_prec_card_mobile_prov 
                  END 
               ) / ( CASE WHEN ( hist_card_mobile_prov_per <= 0 
                               ) THEN NULL 
                          ELSE hist_card_mobile_prov_per 
                      END 
                   )) AS log_hist_prec_card_mobile_prov 
       ,LOG(2 ,( CASE WHEN hist_prec_cert_city <= 0 THEN NULL 
                      ELSE hist_prec_cert_city 
                  END 
               ) / ( CASE WHEN ( hist_cert_city_per <= 0 
                               ) THEN NULL 
                          ELSE hist_cert_city_per 
                      END 
                   )) AS log_hist_prec_cert_city 
       ,LOG(2 ,( CASE WHEN hist_prec_cert_prov <= 0 THEN NULL 
                      ELSE hist_prec_cert_prov 
                  END 
               ) / ( CASE WHEN ( hist_cert_prov_per <= 0 
                               ) THEN NULL 
                          ELSE hist_cert_prov_per 
                      END 
                   )) AS log_hist_prec_cert_prov 
       ,LOG(2 ,( CASE WHEN hist_prec_client_ip <= 0 THEN NULL 
                      ELSE hist_prec_client_ip 
                  END 
               ) / ( CASE WHEN ( hist_client_ip_per <= 0 
                               ) THEN NULL 
                          ELSE hist_client_ip_per 
                      END 
                   )) AS log_hist_prec_client_ip 
       ,LOG(2 ,( CASE WHEN hist_prec_device_sign <= 0 THEN NULL 
                      ELSE hist_prec_device_sign 
                  END 
               ) / ( CASE WHEN ( hist_device_sign_per <= 0 
                               ) THEN NULL 
                          ELSE hist_device_sign_per 
                      END 
                   )) AS log_hist_prec_device_sign 
       ,LOG(2 ,( CASE WHEN hist_prec_info_1 <= 0 THEN NULL 
                      ELSE hist_prec_info_1 
                  END 
               ) / ( CASE WHEN ( hist_info_1_per <= 0 
                               ) THEN NULL 
                          ELSE hist_info_1_per 
                      END 
                   )) AS log_hist_prec_info_1 
       ,LOG(2 ,( CASE WHEN hist_prec_info_2 <= 0 THEN NULL 
                      ELSE hist_prec_info_2 
                  END 
               ) / ( CASE WHEN ( hist_info_2_per <= 0 
                               ) THEN NULL 
                          ELSE hist_info_2_per 
                      END 
                   )) AS log_hist_prec_info_2 
       ,LOG(2 ,( CASE WHEN hist_prec_ip_city <= 0 THEN NULL 
                      ELSE hist_prec_ip_city 
                  END 
               ) / ( CASE WHEN ( hist_ip_city_per <= 0 
                               ) THEN NULL 
                          ELSE hist_ip_city_per 
                      END 
                   )) AS log_hist_prec_ip_city 
       ,LOG(2 ,( CASE WHEN hist_prec_ip_prov <= 0 THEN NULL 
                      ELSE hist_prec_ip_prov 
                  END 
               ) / ( CASE WHEN ( hist_ip_prov_per <= 0 
                               ) THEN NULL 
                          ELSE hist_ip_prov_per 
                      END 
                   )) AS log_hist_prec_ip_prov 
       ,LOG(2 ,( CASE WHEN hist_prec_is_one_people <= 0 THEN NULL 
                      ELSE hist_prec_is_one_people 
                  END 
               ) / ( CASE WHEN ( hist_is_one_people_per <= 0 
                               ) THEN NULL 
                          ELSE hist_is_one_people_per 
                      END 
                   )) AS log_hist_prec_is_one_people 
       ,LOG(2 ,( CASE WHEN hist_prec_mobile_oper_platform <= 0 THEN NULL 
                      ELSE hist_prec_mobile_oper_platform 
                  END 
               ) / ( CASE WHEN ( hist_mobile_oper_platform_per <= 0 
                               ) THEN NULL 
                          ELSE hist_mobile_oper_platform_per 
                      END 
                   )) AS log_hist_prec_mobile_oper_platform 
       ,LOG(2 ,( CASE WHEN hist_prec_network <= 0 THEN NULL 
                      ELSE hist_prec_network 
                  END 
               ) / ( CASE WHEN ( hist_network_per <= 0 
                               ) THEN NULL 
                          ELSE hist_network_per 
                      END 
                   )) AS log_hist_prec_network 
       ,LOG(2 ,( CASE WHEN hist_prec_operation_channel <= 0 THEN NULL 
                      ELSE hist_prec_operation_channel 
                  END 
               ) / ( CASE WHEN ( hist_operation_channel_per <= 0 
                               ) THEN NULL 
                          ELSE hist_operation_channel_per 
                      END 
                   )) AS log_hist_prec_operation_channel 
       ,LOG(2 ,( CASE WHEN hist_prec_pay_scene <= 0 THEN NULL 
                      ELSE hist_prec_pay_scene 
                  END 
               ) / ( CASE WHEN ( hist_pay_scene_per <= 0 
                               ) THEN NULL 
                          ELSE hist_pay_scene_per 
                      END 
                   )) AS log_hist_prec_pay_scene 
       ,LOG(2 ,( CASE WHEN hist_prec_version <= 0 THEN NULL 
                      ELSE hist_prec_version 
                  END 
               ) / ( CASE WHEN ( hist_version_per <= 0 
                               ) THEN NULL 
                          ELSE hist_version_per 
                      END 
                   )) AS log_hist_prec_version 
   FROM kevin_newb_hist_pect_all_0819
;
