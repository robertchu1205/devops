-- below will make '' to 0.00000
-- SET SESSION sql_mode = '';

-- [mysqld]
-- secure-file-priv = ""
-- to avoid ERROR 1290 (HY000) at line 9: The MySQL server is running with the --secure-file-priv option so it cannot execute this statement

truncate pricing_data;
set autocommit = 0;
set unique_checks = 0;
set foreign_key_checks = 0;
set sql_log_bin = 0;
-- SET nav = NULLIF(@nav,''); -- make '' NULL
load data LOCAL infile '/ali/rancher/pg-copy/pricing_data_part_00.csv' IGNORE into table pricing_data fields terminated by ','  ESCAPED BY '"' lines terminated by '\n' IGNORE 1 LINES (@date, instrument_id, @nav, @fq_nav, @dummy_id, @close, @daily_total_return, @ms_daily_total_return, @ms_fq_close, @reuters_daily_total_return, @bbg_daily_total_return, @bbg_free_float_mktcap, @amount, @high, @low, @open, @volume, @choice_fq_factor, @bbg_mkt_cap, @bbg_money_flow, @bbg_split_adj_close, @bbg_total_shares_outstanding, @choice_mktcap, @choice_total_share, @choice_turnover, @choice_daily_total_return, @clear, @long_num, @open_interest, @reg_order_vol, @short_num, @inventory, @bbg_turnover, @adjust_factor, @split_adjust_factor, @ms_split_adjust_factor, @vwap, @reuters_mkt_cap, @reuters_turnover, @cn_stock_extra_data, @cn_stock_flow_indicator, modification_datetime ) SET date = DATE_FORMAT(STR_TO_DATE(@date, '%Y-%m-%d'), '%Y-%m-%d'), nav = NULLIF(@nav,''), fq_nav = NULLIF(@fq_nav,''), dummy_id = NULLIF(@dummy_id,''), close = NULLIF(@close,''), daily_total_return = NULLIF(@daily_total_return,''), ms_daily_total_return = NULLIF(@ms_daily_total_return,''), ms_fq_close = NULLIF(@ms_fq_close,''), reuters_daily_total_return = NULLIF(@reuters_daily_total_return,''), bbg_daily_total_return = NULLIF(@bbg_daily_total_return,''), bbg_free_float_mktcap = NULLIF(@bbg_free_float_mktcap,''), amount = NULLIF(@amount,''), high = NULLIF(@high,''), low = NULLIF(@low,''), open = NULLIF(@open,''), volume = NULLIF(@volume,''), choice_fq_factor = NULLIF(@choice_fq_factor,''), bbg_mkt_cap = NULLIF(@bbg_mkt_cap,''), bbg_money_flow = NULLIF(@bbg_money_flow,''), bbg_split_adj_close = NULLIF(@bbg_split_adj_close,''), bbg_total_shares_outstanding = NULLIF(@bbg_total_shares_outstanding,''), choice_mktcap = NULLIF(@choice_mktcap,''), choice_total_share = NULLIF(@choice_total_share,''), choice_turnover = NULLIF (@choice_turnover,''), choice_daily_total_return = NULLIF(@choice_daily_total_return,''), clear = NULLIF(@clear,''), long_num = NULLIF(@long_num,''), open_interest = NULLIF(@open_interest,''), reg_order_vol = NULLIF(@reg_order_vol,''), short_num = NULLIF(@short_num,''), inventory = NULLIF(@inventory,''), bbg_turnover = NULLIF(@bbg_turnover,''), adjust_factor = NULLIF(@adjust_factor,''), split_adjust_factor = NULLIF(@split_adjust_factor,''), ms_split_adjust_factor = NULLIF(@ms_split_adjust_factor,''), vwap = NULLIF(@vwap,''), reuters_mkt_cap = NULLIF(@reuters_mkt_cap,''), reuters_turnover = NULLIF(@reuters_turnover,''), cn_stock_extra_data = NULLIF(@cn_stock_extra_data,''), cn_stock_flow_indicator = NULLIF(@cn_stock_flow_indicator,'');
commit;

-- to accelerate the speed of loading data
-- https://stackoverflow.com/questions/2463602/mysql-load-data-infile-acceleration
-- https://dba.stackexchange.com/questions/98384/need-to-make-mysqls-load-data-local-infile-load-large-data-faster