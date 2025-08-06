CLASS zcl_simbolos_texto_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_simbolos_texto_lvhe IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

out->write( text-001 ).
out->write( 'Texto de emergencia'(001) ).
ENDMETHOD.
ENDCLASS.
