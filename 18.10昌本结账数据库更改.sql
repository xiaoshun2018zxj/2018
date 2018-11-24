单据号:I62018092800000531,I62018091700000764,I62018093000000768,

物料:A110011801001 C060020101036

单价都是0

更改sql:
德:
select  cinventoryid  物料 ，nprice 单价，nmny 金额 from ia_detailledger where vbillcode='I62018092800000531' for update 
update ia_detailledger set nprice=0，nmny=0 where  vbillcode='I62018092800000531' and cinventoryid='1001A1100000000179HM'


德:
select  cinventoryid  物料 ，nprice 单价，nmny 金额 from ia_detailledger where vbillcode='I62018091700000764' and dr=0 for update 
update ia_detailledger set nprice=0，nmny=0 where  vbillcode='I62018091700000764'
 and cinventoryid='1001A11000000009TZMH'  and dr=0


德:
select  cinventoryid  物料 ，nprice 单价，nmny 金额 from ia_detailledger where vbillcode='I62018093000000768' and dr=0 for update 
update ia_detailledger set nprice=0，nmny=0 where  vbillcode='I62018093000000768'
 and cinventoryid='1001A11000000009TZMH'  and dr=0
