@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds : union and union all'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW8 as select from zdemo_table
{
   key id,
   category,
   region,
   char_field1,
   dec_field2
}
where category = 'ELECTRON'

union

select from zdemo_table
{
key id,
   category,
   region,
   char_field1,
   dec_field2
}

where category = 'ELECTRON'
