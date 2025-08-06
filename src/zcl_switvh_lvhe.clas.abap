CLASS zcl_switvh_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_switvh_lvhe IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

  DATA lv_num TYPE i VALUE 1.

  WHILE lv_num < 10.

    out->write( lv_num ).
    out->write( |iteraccion = { sy-index }| ).
    lv_num += 1.

    IF lv_num > 3.

      EXIT.
    ENDIF.
  ENDWHILE.



ENDMETHOD.


ENDCLASS.
