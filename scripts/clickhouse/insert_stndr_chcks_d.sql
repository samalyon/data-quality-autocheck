INSERT INTO ch_ods_vldtns.stndr_chcks_d (
    `validation_code`
    , `validation_ms`
    , `validation_dt`
    , `validation_success_flg`
    , `schema_nm`
    , `table_nm`
    , `attribute_nm`
    , `dataflow_ms`,
    , `failed_rows_cnt`
    , `total_rows_cnt`
    , `validation_result_txt`
)
FORMAT JSONEachRow {}
