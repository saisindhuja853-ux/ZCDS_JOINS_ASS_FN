@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Type casting'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW10 as select from zdemo_table
{
    int1_field,
    cast(int1_field as abap.int4) as int1_to_int4,
//    cast(int8_field as abap.int1) as int8_to_int1
cast(int1_field as abap.char(6)) as int_to_char,
cast(numc_field1 as abap.tims) as numc_to_tims
//cast (lang_field as zpp_lang_code ) as lang_to_char
}
