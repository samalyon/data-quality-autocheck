CREATE TABLE IF NOT EXISTS ch_ods_vldtns.stndr_chcks_d ON CLUSTER 'main_shard' AS ch_ods_vldtns.stndr_chcks_r
Engine = Distributed('main_shard', ch_ods_vldtns, stndr_chcks_r, murmurHash2_32(validation_code))
