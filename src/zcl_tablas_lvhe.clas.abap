CLASS zcl_tablas_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.



ENDCLASS.



CLASS zcl_TABLAS_lvhe IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

SELECT FROM /dmo/flight
FIELDS carrier_id
INTO TABLE @DATA(lt_itab).

DATA(lv_string_itab) = concat_lines_of( table = lt_itab sep = '-' ).
out->write( lv_string_itab ).

ENDMETHOD.

  ENDCLASS.
