CLASS zcl_clase_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.



ENDCLASS.



CLASS zcl_clase_lvhe IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.
out->write( 'Hola mundo' ).
"Esta linea imprime por consola"

ENDMETHOD.

  ENDCLASS.
