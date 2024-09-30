select 'grp_em'                                                 ::text              as schema_nm
		, 'dim_store'                                           ::text              as table_nm
        , null                                                                      as total_rows_cnt
        , null                                                                      as failed_rows_cnt
        , true                                                  ::boolean           as validation_success_flg
        , json_build_object('last_update_dttm', current_date)   ::json              as validation_result_txt
union all
(select 'grp_ods_dlvry'                                         ::text              as schema_nm
		, 'delivery_task'                                       ::text              as table_nm
        , null                                                                      as total_rows_cnt
        , null                                                                      as failed_rows_cnt
        , true                                                  ::boolean           as validation_success_flg
        , json_build_object('last_update_dttm', current_date)   ::json              as validation_result_txt
)