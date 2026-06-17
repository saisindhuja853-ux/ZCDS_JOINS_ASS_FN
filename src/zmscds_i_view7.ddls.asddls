@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS: Aggregate Functions'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW7
  as select from zdemo_table
{
  id,
  int1_field,
  sum(int1_field)                      as sum_int,
  avg(int2_field as abap.dec(10 , 2 )) as avg_int,
  count(distinct int2_field)           as count_int
}
where int1_field <=50
group by id,
  int1_field
having( sum(int1_field) ) >30
