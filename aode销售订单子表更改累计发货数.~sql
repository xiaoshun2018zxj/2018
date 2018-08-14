原因:下游发货单删除,但销售订单子表没有的累计发货数没有更新,导致销售订单无法弃审.
1.查询对应销售订单子实体的累计发货数,子表pk;
  select    b.ntotalsendnum,a.csaleorderbid 子表pk  from  so_saleorder_b a,so_saleorder_exe b   where  a.csaleorderbid =b.csaleorderbid  
and csaleorderid=(select csaleorderid  from so_saleorder where vbillcode ='SO30TA180731002')
2.把 (so_saleorder_exe) 中的ntotalsendnum  累计发货主数量 改为空值, 
  update  so_saleorder_exe b  set   b.ntotalsendnum='' where    b.csaleorderbid in('1001A110000000073XM4','1001A110000000073XM5')
