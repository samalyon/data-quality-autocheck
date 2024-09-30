CREATE TABLE IF NOT EXISTS ch_ods_vldtns.stndr_chcks_r
(
    `validation_code`                   String
    , `validation_ms`                   Int64 DEFAULT 0
    , `validation_dt`                   Date DEFAULT toDate('1970-01-01')
    , `validation_success_flg`          Boolean
    , `schema_nm`                       String
    , `table_nm`                        String
    , `attribute_nm`                    String
    , `dataflow_ms`                     Int64 DEFAULT 0
    , `failed_rows_cnt`                 UInt32 DEFAULT 0
    , `total_rows_cnt`                  UInt32 DEFAULT 0
    , `validation_result_txt`           String
)
Engine = MergeTree()
PARTITION BY validation_dt
ORDER BY (validation_code, validation_ms);
