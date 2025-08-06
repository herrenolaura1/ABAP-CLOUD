CLASS zcl_do_enddo_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_do_enddo_lvhe IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

*DATA(lv_num) = 0.
*DATA lv_cont TYPE i VALUE 2.
*
*
*
*DO lv_cont times.
*out->write( lv_num ).
*
*lv_num = lv_num + 1.
*
*

*
*
*ENDDO.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*"CONTADOR PARA MOSTRAR QUE EL BUCLE ESTA VIVO
*DATA(lv_contador) = 1.
*
*"BUCLE INFINITO
*DO.
* out->write( 'hola' ).
*
* out->write( |Iteracion: { lv_contador }| ).
* lv_contador += 1.
* ENDDO.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*
* DO 20 TIMES.
* DATA(lv_div) = sy-index mod 2.
*out->write( 'hola' ).
*check lv_div = 0.
*out->write( 'Hola check' ).
*
*ENDDO.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DATA(lv_string) = 'daniel Fernando Pedro ramon Sergio'.
CONDENSE lv_string.

DATA: lv_nombre1 TYPE string,
      lv_nombre2 TYPE string,
      lv_nombre3 TYPE string,
      lv_nombre4 TYPE string,
      lv_nombre5 TYPE string,
      lv_nombre  TYPE string,
      lv_longitud TYPE i.

" Extraer los nombres
SPLIT lv_string AT space INTO lv_nombre1 lv_nombre2 lv_nombre3 lv_nombre4 lv_nombre5.

DO 5 TIMES.

  " Elegir el nombre correcto en cada vuelta del bucle
  CASE sy-index.
    WHEN 1.
    lv_nombre = lv_nombre1.
    WHEN 2.
     lv_nombre = lv_nombre2.
    WHEN 3.
    lv_nombre = lv_nombre3.
    WHEN 4.
    lv_nombre = lv_nombre4.
    WHEN 5.
    lv_nombre = lv_nombre5.
  ENDCASE.

  lv_longitud = strlen( lv_nombre ).

  IF lv_longitud > 7.
    out->write( 'Hola Fernando' ).

  ELSEIF lv_longitud = 6.
    IF lv_nombre = 'Sergio'.
      out->write( 'Hola Sergio' ).
    ELSEIF lv_nombre = 'daniel'.  " Ojo: está en minúsculas
      out->write( 'Hola Daniel' ).
    ENDIF.

  ELSE.
    out->write( 'Hola Pedro' ).
    lv_nombre = to_upper( lv_nombre ).
    out->write( |Nombre en mayúsculas: { lv_nombre }| ).
  ENDIF.

ENDDO.



ENDMETHOD.
ENDCLASS.
