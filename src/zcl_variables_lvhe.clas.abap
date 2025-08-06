CLASS zcl_variables_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_variables_lvhe IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

  "************************************************************"
  "DATA lv_alumno type string.
  "lv_alumno = 'Laura'.

  "lv_alumno = 'sara'.
  "out->write( lv_alumno ).""
  "************************************************"
  "Operaciones matematicas con variables
*
*DATA: lv_num1 TYPE i VALUE 4,
*      lv_num2 TYPE i VALUE 5,
*      lv_res type i.
*
*      lv_res = lv_num1 + lv_num2.
*      out->write( lv_res ).
*
*      lv_res = lv_num1 + lv_num2.
*      out->write( lv_res ).
*
*      lv_num1 = lv_num1 + lv_num2.
*      out->write( lv_num1 ).
*
*      lv_res = lv_num1 + 2.
*      out->write( lv_res ).



*out->write( | la suma de { lv_num1 } + { lv_num2 } =  { lv_res } | ).

  "***************************************
*  "SUMA
*  DATA: lv_num1 TYPE i VALUE 5,
*        lv_num2 TYPE i value 1,
*        lv_resultado TYPE i.
*
*        "*suma
*        lv_resultado = lv_num1 + lv_num2.
*        out->write( lv_resultado ).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*"los dias que han pasado desde mi dia de nacimiento hasta hoy
*
*DATA: lv_date TYPE d,
*      lv_nacimiento type d VALUE '20060826',
*      lv_diferencia type i.
*
*      lv_date = cl_abap_context_info=>get_system_date(  ).
*      lv_diferencia = lv_date - lv_nacimiento.
*
*      out->write( lv_diferencia ).
*
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"Quiero que me diga el mes, para eso usamos 4(2) 4 porque son 4 caracteres antes y 2 porque son los dos siguientes, entoces en este caso nos dara 8

*DATA: lv_date TYPE d,
*      lv_nacimiento type d VALUE '20060826',
*      lv_mes type string.
*
*      lv_mes = lv_nacimiento+4(2). "mes
*      out->write( lv_mes ).
*
*      lv_mes = lv_nacimiento(4). "AÑO
*      out->write( lv_mes ).
*
*      lv_mes = lv_nacimiento+6(2). "DIA
*      out->write( lv_mes ).


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
* "Contador de caracteres
*
* DATA: lv_cadena type string VALUE 'hola, tengo sueño',
*       lv_contador type i.
*
*       lv_contador = numofchar( 'Pedro' ).
*       lv_contador = numofchar( lv_cadena ).
*
*       out->write( lv_contador ).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Devuelve numero de caracteres encontrados, el buscador es key sensitive
*
* DATA: lv_cadena type string VALUE 'LAURA, laura',
*      lv_contador type i.
*
*     lv_contador = count( val = lv_cadena sub = 'LA' ).
*
*
*       out->write( lv_contador ).

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "Constantes
* CONSTANTS: lc_pais type string value 'España',
*            lc_moneda type string value 'EUR',
*            lc_ahorros type i value 10,
*            lc_iva TYPE p length 8 decimals 2 value '21.00'.
*
*            data: lv_pais type string value 'España'.
*            out->write( lc_iva ).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Area de un circulo

*CONSTANTS: lc_pi TYPE p DECIMALS 2 VALUE '3.14'.
*DATA: lv_radio TYPE i Value 100,
*      lv_resultado TYPE p DECIMALS 2.
*      lv_resultado = lc_pi * lv_radio * lv_radio.
*      out->write( |El area de un circulo { lv_radio }: { lv_resultado }| ).
*
*


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Declaracion de una variable en linea
Data(lv_variable_linea) = 8 * 6.
out->write( lv_variable_linea ).

DATA(lv_div) = 08 / 16.
out->write( lv_div ).

DATA(lv_text) = 'ABAP I - 2025'.
out->write( lv_text ).

DATA(lv_dec) = '100.245'.
out->write( lv_dec ).





ENDMETHOD.

ENDCLASS.
