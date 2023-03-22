#!/bin/bash
# nohup ./mysql-batch-load.sh > mysql-batch-load.log 2>&1 &

mysql -e "truncate pricing_data;" -u root --database test
mysql -e "set autocommit = 0;" -u root --database test
mysql -e "set unique_checks = 0;" -u root --database test
mysql -e "set foreign_key_checks = 0;" -u root --database test
mysql -e "set sql_log_bin = 0;" -u root --database test

echo for loop

for f in ./pricing_data_part_*.csv
do
  filepath="/csv/${f}"
  mysql -f -u root --database test -e "load data infile '"$filepath"' IGNORE into table pricing_data fields terminated by ','  ESCAPED BY '\"' lines terminated by '\n' IGNORE 1 LINES (@date, instrument_id, @nav, @fq_nav, @dummy_id, @close, @daily_total_return, @ms_daily_total_return, @ms_fq_close, @reuters_daily_total_return, @bbg_daily_total_return, @bbg_free_float_mktcap, @amount, @high, @low, @open, @volume, @choice_fq_factor, @bbg_mkt_cap, @bbg_money_flow, @bbg_split_adj_close, @bbg_total_shares_outstanding, @choice_mktcap, @choice_total_share, @choice_turnover, @choice_daily_total_return, @clear, @long_num, @open_interest, @reg_order_vol, @short_num, @inventory, @bbg_turnover, @adjust_factor, @split_adjust_factor, @ms_split_adjust_factor, @vwap, @reuters_mkt_cap, @reuters_turnover, @cn_stock_extra_data, @cn_stock_flow_indicator, modification_datetime ) SET date = DATE_FORMAT(STR_TO_DATE(@date, '%Y-%m-%d'), '%Y-%m-%d'), nav = NULLIF(@nav,''), fq_nav = NULLIF(@fq_nav,''), dummy_id = NULLIF(@dummy_id,''), close = NULLIF(@close,''), daily_total_return = NULLIF(@daily_total_return,''), ms_daily_total_return = NULLIF(@ms_daily_total_return,''), ms_fq_close = NULLIF(@ms_fq_close,''), reuters_daily_total_return = NULLIF(@reuters_daily_total_return,''), bbg_daily_total_return = NULLIF(@bbg_daily_total_return,''), bbg_free_float_mktcap = NULLIF(@bbg_free_float_mktcap,''), amount = NULLIF(@amount,''), high = NULLIF(@high,''), low = NULLIF(@low,''), open = NULLIF(@open,''), volume = NULLIF(@volume,''), choice_fq_factor = NULLIF(@choice_fq_factor,''), bbg_mkt_cap = NULLIF(@bbg_mkt_cap,''), bbg_money_flow = NULLIF(@bbg_money_flow,''), bbg_split_adj_close = NULLIF(@bbg_split_adj_close,''), bbg_total_shares_outstanding = NULLIF(@bbg_total_shares_outstanding,''), choice_mktcap = NULLIF(@choice_mktcap,''), choice_total_share = NULLIF(@choice_total_share,''), choice_turnover = NULLIF (@choice_turnover,''), choice_daily_total_return = NULLIF(@choice_daily_total_return,''), clear = NULLIF(@clear,''), long_num = NULLIF(@long_num,''), open_interest = NULLIF(@open_interest,''), reg_order_vol = NULLIF(@reg_order_vol,''), short_num = NULLIF(@short_num,''), inventory = NULLIF(@inventory,''), bbg_turnover = NULLIF(@bbg_turnover,''), adjust_factor = NULLIF(@adjust_factor,''), split_adjust_factor = NULLIF(@split_adjust_factor,''), ms_split_adjust_factor = NULLIF(@ms_split_adjust_factor,''), vwap = NULLIF(@vwap,''), reuters_mkt_cap = NULLIF(@reuters_mkt_cap,''), reuters_turnover = NULLIF(@reuters_turnover,''), cn_stock_extra_data = NULLIF(@cn_stock_extra_data,''), cn_stock_flow_indicator = NULLIF(@cn_stock_flow_indicator,'');" 
done

mysql -e "commit;" -u root --database test

echo done