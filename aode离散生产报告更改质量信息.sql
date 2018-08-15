select * from   mm_wr_quality c where  c.pk_wr_product_q=
( select       a.pk_wr_product    from mm_wr_product a where       a.pk_wr in 
(select  pk_wr   from  mm_wr b  where vbillcode='55A4GL20180815030'  and dr=0)   )
for update 
