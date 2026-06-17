@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Calculate amount per customer'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_ASS2 as select from zmsapr20_dt_cust as cust
inner join zmsapr20_dt_so as head
on head.buyer = cust.cust_id
inner join zmsapr20_dt_soit as item
on head.soid = item.soid
{
    cust.cust_id as Customerid,
    cust.name as Customername,
    count(distinct head.soid) as Totalnumber,
    cast( (sum(item.amount) ) as abap.dec(10,3)) as totalAmount,
    count(distinct item.item_id) as Totalitem,
    item.currency as currency
}
group by cust.cust_id, cust.name,item.currency
