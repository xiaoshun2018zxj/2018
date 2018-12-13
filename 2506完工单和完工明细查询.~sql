 完工单
select cperiod from cm_product where pk_org=(select pk_factory  from org_factory where   code='813')    and  cperiod='2018-10'  and dr=0
完工明细
select  cperiod,dr  from cm_product_b where  cperiod='2018-10'      and  pk_org =(select pk_factory  from org_factory where   code='813')     and dr=0

统计单据数量
select count(*) from cm_product where pk_org=(select pk_factory  from org_factory where   code='813')    and  cperiod='2018-10'  and dr=0
