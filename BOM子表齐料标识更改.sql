更改齐料
select distinct(bkitmaterial)  from bd_bom_b
update bd_bom_b           set       bkitmaterial='Y' where     bkitmaterial='N' 

更改单据的生效日期
 select distinct(cbeginperiod )  from bd_bom_b     where     cbeginperiod>'2018-06-01 00:00:00 '
 
update bd_bom_b           set       cbeginperiod='2018-06-01 00:00:00' where   cbeginperiod>'2018-06-01 00:00:00'

