CLASS zcl_if_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_if_lvhe IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

DATA: lv_nombre TYPE string VALUE 'Laura',
      lv_num1 TYPE i VALUE 5.
      lv_nombre = strlen( lv_nombre ).

      IF lv_nombre+0(1) = 10.
      out->write( 'La suma es 10' ).

      ENDIF.

      DATA(lv_p) = lv_nombre+0(1).
      out->write( lv_p ).


*      IF lv_nombre+0(1) =
*      out->write( 'Hemos logrado entrar' ).
*
*      ENDIF.

ENDMETHOD.
ENDCLASS.
