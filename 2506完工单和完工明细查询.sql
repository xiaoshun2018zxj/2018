 �깤��
select cperiod from cm_product where pk_org=(select pk_factory  from org_factory where   code='813')    and  cperiod='2018-10'  and dr=0
�깤��ϸ
select  cperiod,dr  from cm_product_b where  cperiod='2018-10'      and  pk_org =(select pk_factory  from org_factory where   code='813')     and dr=0

ͳ�Ƶ�������
select count(*) from cm_product where pk_org=(select pk_factory  from org_factory where   code='813')    and  cperiod='2018-10'  and dr=0
