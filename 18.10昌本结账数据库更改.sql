���ݺ�:I62018092800000531,I62018091700000764,I62018093000000768,

����:A110011801001 C060020101036

���۶���0

����sql:
��:
select  cinventoryid  ���� ��nprice ���ۣ�nmny ��� from ia_detailledger where vbillcode='I62018092800000531' for update 
update ia_detailledger set nprice=0��nmny=0 where  vbillcode='I62018092800000531' and cinventoryid='1001A1100000000179HM'


��:
select  cinventoryid  ���� ��nprice ���ۣ�nmny ��� from ia_detailledger where vbillcode='I62018091700000764' and dr=0 for update 
update ia_detailledger set nprice=0��nmny=0 where  vbillcode='I62018091700000764'
 and cinventoryid='1001A11000000009TZMH'  and dr=0


��:
select  cinventoryid  ���� ��nprice ���ۣ�nmny ��� from ia_detailledger where vbillcode='I62018093000000768' and dr=0 for update 
update ia_detailledger set nprice=0��nmny=0 where  vbillcode='I62018093000000768'
 and cinventoryid='1001A11000000009TZMH'  and dr=0
