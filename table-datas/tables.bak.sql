REF 主数据55 tables
HIS 历史数据28 tables
NAV 估值数据32 tables
UTD 实时数据2 tables


REF_INSTRUMENT 资产主数据表
REF_SORT_CRETERIA 资产附加属性
REF_OTHER_CRETERIA 资产附加属性
REF_CODIFICATION 代码转换表
REF_SCHEDULAR 公告信息表
REF_FUND 组合主数据表
REF_UNIT 分级基金主数据表
REF_DESCRIPTION 数据字典表
REF_TRD_MASTER_DATA 翻译表
REF_GL_ACCOUNT 会计科目表
REF_ACTOR 第三方主数据表
REF_TRANSACTION_TYPE 交易类型表


HIS_TRADE 交易表
HIS_TRADE_FEE 交易表
HIS_MOVEMENT 交易对持仓影响表
HIS_MOVEMENT_UNIT 交易对持仓影响表
HIS_FUND_DIVIDEND 本基金分红表
HIS_BOOKING_ENTRY 凭证表
HIS_BALANCE 历史科目余额表
HIS_RATE 利率表
HIS_EXCHANGE_RATE 汇率表


NAV_EVENT 估值事件表（入口）
NAV_DETAILED_NET_ASSET 估值后持仓表
NAV_NET_UNIT 资产净值表
NAV_BALANCE 估值后余额表
NAV_EXCHANGE_RATE 估值汇率表

amdata.pat_holding_daily;     PAT_HOLDING_DAILY(产品每日持仓绩效分析分类汇总表)
amdata.holdingdailysum;        HOLDINGDAILYSUM(套账日持仓数据汇总表)
amdata.holdingdailysum2        HOLDINGDAILYSUM2(套账日持仓数据汇总表2)

基本养老保险基金一零七组合 1017719

基本养老保险基金三一零组合 1017929
交易系统产品编码
基本养老保险基金五一零组合 1017930

年金报表-中行模板(及后续年金模板报表开发)[模板目录:D:\lmy\年金通用模板]
人社部基本养老报表和投管机构(模板目录:D:\lmy\人社部)
 	select * from AMVBA.TEMP_OTC_SECURITY_BASIC                                                    ------场外销售报表



	select * from AMDATA.TA_FUND_INFO                                                              ------基金信息表
	select * from AMDATA.TA_CUST_TRADEDETAIL                                                       ------客户交易表
	select * from AMDATA.ACCTINFO                                                                  ------产品基本信息表
	select * from AMDATA.ACCTDAILYINFO                                                             ------产品每日信息
	select * from AMDATA.TA_FUND_HOLDING_DAILY                                                     ------产品日份额余额表
	select * from AMDATA.TA_CUST_HOLDING_DAILY                                                     ------客户日份额余额表
   	select * from AMDATA.pat_holding_daily                                                         ------产品每日持仓绩效分析分类汇总表
 	select * from AMDATA.pat_holding_daily_detail  where REALIZED_RETURN <> 0 and DVND_RETURN <>0  ------产品每日持仓明细表 
 	select * from AMDATA.secu_daily_info                                                           ------证券每日信息
	select * from AMDATA.SECU_INFO                                                                 ------证券信息表
	select * from AMDATA.INT_SECU_INFO                                                             ------证券基本信息
	select * from AMDATA.HOLDINGSDAILYINFO                                                         ------产品证券每日信息（原始表）
	select * from AMDATA.T99_DICT where dict_id='SECU_TYPE'                                        ------字典表
	
	SELECT AMDATA.PKG_AM_METRIC.F_METRIC_TIMERETURN('1017719',DATE'2018-08-01',DATE'2018-08-31') BQ_YTM from dual;---报告期内投资收益率（%）
	select AMDATA.PKG_AM_METRIC.F_METRIC_BM_RETURN('1017719',DATE'2018-08-01',DATE'2018-08-31') aaa from dual;----报告期内基准收益率（%）
	
	
	