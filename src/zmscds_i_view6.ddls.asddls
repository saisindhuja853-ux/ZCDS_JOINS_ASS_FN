@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS: Functions'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW6 as select from zdemo_table
{
    id,
//   < dec_field,
//    int8_field,                                       Numeric functions
//    int2_field,
//    ceil(dec_field) as ceil_fn,
//    floor(dec_field) as floor_fn,
//    mod(int8_field, int2_field) as mod_fn>

//                                                       string functions
char_field4,
upper(char_field4) as upper_fn,
substring(char_field4 , 3, 5) as substring_fn,
char_field3,
lpad(char_field3, 8, '*')as lpad_fn,
ltrim(char_field3, 'A') as ltrim_fn
  
}
where id between '00031' and '00039'
