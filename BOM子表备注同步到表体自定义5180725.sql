select  vnote, vdef5   from bd_bom_b   where vdef5='~'
update    bd_bom_b set     vdef5=vnote      where vdef5='~'

select   vbillcode,dr from   so_saleorder
 where  ccustomerid=(select    pk_customer   from   bd_customer where name='��ɽ����Ȫľҵ�������ι�˾')




