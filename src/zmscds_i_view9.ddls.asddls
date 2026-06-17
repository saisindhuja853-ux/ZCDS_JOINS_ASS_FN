@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : BUILD-IN fUNCTIONS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW9 as select from zdemo_table
{
    id,
    date_field,
    dats_days_between(date_field, $session.system_date) as days_since
}
