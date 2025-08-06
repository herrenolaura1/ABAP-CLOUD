CLASS zcl_f_cadenas_caracteres_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_f_cadenas_caracteres_lvhe IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

*
*DATA: lv_string TYPE string VALUE 'Daniel Fernado Pedro Ramon',
*      lv_name TYPE string VALUE 'Fernando',
*      lv_num    TYPE i.
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""FUNCIONES DE BUSQUEDA
*
*"strlen
*lv_num = strlen( lv_string ). "Cuenta el numero de caracteres
*out->write( lv_num ).
*
*
*"Count, devuelve el numero de caracteres encontrados, keysensitive
*lv_num = count( val = lv_string sub = lv_name ).
**DATA(lv_num) = count( val = lv_string sub = 'We' ).
*out->write( lv_num ).
*
*
*"Count_any_of  , Me devuelve el numero de caracteres encontrados, no importa si es mayuscula o minuscula
*lv_num = count_any_of( val = lv_string sub = lv_name ).
*out->write( lv_num ).
*
*
*"Count_any_not_of  , Cuenta el resto de carcteres menos el que señalamos en este caso we
*lv_num = count_any_not_of( val = lv_string sub = 'Fernando' ).
*out->write( lv_num ).
*
*
*"Find, Me dice la posicion en la que se encuentra lo que buscamos, empieza contando en 0
*lv_num = find( val = lv_string sub = lv_name ).
*out->write( lv_num ).
*
*"find_any_of
*lv_num = find_any_of( val = lv_string sub = 'Fernando' ).
*out->write( lv_num ).
*
*"find_any_not_of , me dice que caracter no coincide con fernando
*lv_num = find_any_not_of( val = lv_string sub = 'Fernando' ).
*out->write( lv_num ).
*
*
*"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" FUNCIONES DE PROCESAMIENTO
*
*DATA lv_cadenas TYPE string.
*
*"MAYUS minus
*lv_cadenas = to_upper( lv_string ). "Se puede hacer desde fuera del out->write. fuera del out es la mejor manera ya que dentro del out es una configuracion temporal
*out->write( |TO_UPPER = { lv_cadenas }| ).
*"lo de arriba y abajo es lo mismo, solo que diferente sintaxix, la de arriba es correcta
*out->write( |TO_UPPER = { to_upper( lv_string ) }| ).
*
*out->write( |TO_LOWER = { to_lower( lv_string ) }| )."Pasa a minuscula
*
*out->write( |REVERSE = { to_lower( lv_string ) }| )."Pasa a minuscula
*
*
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""FUNCIONES DE CONTENIDO
*DATA: lv_text type string,
*      lv_pattern type string,
*      lv_pattern2 type string.
*
*      lv_text = 'El telefono del empleado es 688-345-987'.
*      lv_pattern = `\d{3}-\d{3}-\d{3}`.
*      lv_pattern2 = `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b`.
*
*IF contains( val = lv_text pcre = lv_patter2 ).
*out->write
*
*
*
*
*
*
*
*      "Concatenacion
*
*     DATA: lv_string_a TYPE string VALUE 'hola, que tal esta?',
*     lv_string_b TYPE string VALUE 'Bien gracias 2',
*     lv_concatenacion TYPE string.
*
*     lv_concatenacion = |concatenacion 1: { lv_ }|
*
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Ejercicio 3
*"P1. Extraer de la siguiente variable DATA(lv_string) = 'daniel fernando pedro ramon seergio'.
*"los distintos nombres que hay
*
*"Declaramos la cadena original con los nombres separados por espacios
*DATA(lv_string) = 'daniel Fernando Pedro ramon Sergio'.
*
*"quitamos los espacios duplicados y espacios al principio/final si los hubiera
*CONDENSE lv_string.
*
*"Declaramos variables para almacenar cada nombre individualmente
*DATA: lv_nombre1 type string,
*      lv_nombre2 type string,
*      lv_nombre3 type string,
*      lv_nombre4 type string,
*      lv_nombre5 type string.
*
* "Buscamos la posicion del primer espacio
* DATA(lv_pos1) = find( val = lv_string sub = | | ).
*
* "Extraemos el primer nombre desde la posicion 0 hasta antes del primer espacio
* lv_nombre1 = substring( val = lv_string off = 0 len = lv_pos1 ).
*
* "Obtenemos el resto de la cadena despues del primer espacio
*  DATA(lv_rest1) = substring_after( val = lv_string sub = | | ).
*
*  "BUscamos el siguiente espacio en la nueva subcadena
*  DATA(lv_pos2) = find( val = lv_rest1 sub = | | ).
*
* "Extraemos el segundo nombre
*   lv_nombre2 = substring( val = lv_rest1 off = 0 len = lv_pos2 ).
*
*   "Repetimos el proceso para extraer el tercer nombre
*     DATA(lv_rest2) = substring_after( val = lv_rest1 sub = | | ).
*    DATA(lv_pos3) = find( val = lv_rest2 sub = | | ).
*    lv_nombre3 = substring( val = lv_rest2 off = 0 len = lv_pos3 ).
*
* "Repetimos el proceso para extraer el cuarto nombre
*   DATA(lv_rest3) = substring_after( val = lv_rest2 sub = | | ).
*    DATA(lv_pos4) = find( val = lv_rest3 sub = | | ).
*    lv_nombre4 = substring( val = lv_rest3 off = 0 len = lv_pos4 ).
*
* "El quinto nombre es lo que queda despues del ultimo espacio
* lv_nombre5 = substring_after( val = lv_rest3 sub = | | ).
*
*
*""""""P2
*DATA(lv_nombre) = lv_nombre2.
*DATA: lv_longitud1 TYPE i.
*
*      lv_longitud1 = strlen( lv_nombre ).
*
*IF lv_nombre > 7.
*out->write( 'Hola fernando' ).
*
*ELSEIF lv_nombre = 6.
*IF lv_nombre = 'Sergio'.
*out->write( 'Hola Sergio' ).
*ELSEIF lv_nombre = 'Daniel'.
*out->write( 'Hola Daniel' ).
*ENDIF.
*
*ELSE.
*"Si no es ninguno de los anteriores, aumimos que es Pedro
*out->write( 'Hola pedro' ).
*
*  " Convertimos el nombre a mayúsculas
*      lv_nombre = to_upper( lv_nombre ).
*
*      " Mostramos el nombre en mayúsculas
*      out->write( |Nombre en mayúsculas: { lv_nombre }| ).
*    ENDIF.
*

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"segment

*
*DATA(lv_string1) = 'El perro corre por el prado'.
*
*
*
*DATA(lv_palabra) = segment( val = lv_string1 index = 3 sep = | | ).
*
*out->write( lv_palabra ).
*

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "insert
 DATA(lv_ins_string) = insert( val = '123cliente01' sub = 'Hola' off = 3 ).
 out->write( lv_ins_string ).


ENDMETHOD.
ENDCLASS.
