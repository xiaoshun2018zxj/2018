
恢复发货单表体被删除物料,dr 改为0
select vsrcrowno 来源单据行号 ,dr  from so_delivery_b 
where cdeliveryid=(select cdeliveryid  from so_delivery where  vbillcode='DNAT180829002')  for update 

