1.1查询和更改销售订单主实体   
select  dr   from so_saleorder  where vbillcode in ('SO30SA180816004', 'SO30SA180810005')
  for update 
  
1.2查询和更改销售订单子实体
select b.dr from so_saleorder_b  b 
 where  b.csaleorderid in (select  csaleorderid from so_saleorder  where vbillcode in ('SO30SA180816004', 'SO30SA180810005'))
 for update 

1.3查询和更改销售订单子实体扩展表                                                                               
 select dr
   from so_saleorder_exe
  where csaleorderbid in
        ( select csaleorderbid
           from so_saleorder_b
          where csaleorderid in
                (select csaleorderid
                   from so_saleorder
                  where vbillcode in ('SO30SA180816004', 'SO30SA180810005')))   
   for update 
 1.4销售订单主实体，审批人=制单人        
 update  so_saleorder set approver=billmaker where   vbillcode='SO30SA180810005'

