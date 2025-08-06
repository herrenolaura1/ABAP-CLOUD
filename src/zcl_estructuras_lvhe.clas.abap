CLASS zcl_estructuras_lvhe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estructuras_lvhe IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.



*TYPES: BEGIN OF ty_persona, "ty_persona: Es el nombre creado para nuestro nuevo tipo
*       nombre TYPE char40,
*       edad TYPE numc3,
*       email TYPE /dmo/email_address,
*
*       END OF ty_persona.
*
*"Forma 1 declaracion de estructura
*DATA ls_persona TYPE ty_persona. "estructura
*
*ls_persona-nombre = 'Laura'.
*ls_persona-edad = 19.
*ls_persona-email = 'herrenolaura1@gmail.com'.
*
*out->write( ls_persona-edad ).
*
*out->write( |\n| ).
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"Forma 2 declaracion de una estructura
*DATA(ls_persona2) = VALUE ty_persona( nombre = 'Laura' edad = 20 email = 'herrenolaura1@gmail.com' ).
*out->write( ls_persona2 ).
*
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"forma 3 declaracion de una estructura y tipo DE GOLPE.
*
*
*    DATA: BEGIN OF ls_empleado,
*            nombre TYPE string VALUE 'Laura',
*            id     TYPE i,
*            email  TYPE  /dmo/email_address,
*          END OF ls_empleado.
*
*
*
*   out->write( |\n| ).
*  out->write( ls_empleado ).
*
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"Tipos de tablas:
**1. TABLAS INTERNAS ( en memoria ) Se usan dentro del codigo ABAP ¡Solo existen en tiempo de ejecucion!
**y las creamos nosotros, no estan en la base de datos. se declaran como lt_xxx
**
**2. TABLAS DE BD ( persistentes )  o tablas transparentes o externas, se crean en el diccionario ABAP
**( .ddls, .ddic ) y almacenan datos reales.
**
**3. CDS table ( o enity ) Es una vista avanzada que se define con el lenguaje DDL, en eclipse, sobre
**una o varias tablas existentes.
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"TIPOS DE ESTRUCTURAS
*"estructura simple
*    DATA: BEGIN OF ls_empleado2,
*            nombre TYPE string VALUE 'Laura',
*            id     TYPE i,
*            email  TYPE  /dmo/email_address,
*          END OF ls_empleado2.
*
*"estructura anidada
*
*    DATA:BEGIN OF ls_empl_info,
*
*           BEGIN OF info,
*             id       TYPE i VALUE 1234,
*             nombre   TYPE string VALUE 'Pedro',
*             apellido TYPE string VALUE  'Elvira',
*           END OF info,
*
*           BEGIN OF direccion,
*             ciudad TYPE string VALUE 'Madrid',
*             calle  TYPE string VALUE 'c. norfeo',
*             pais   TYPE string VALUE  'España',
*           END OF direccion,
*
*           BEGIN OF puesto,
*             departamento TYPE string VALUE 'IT',
*             sueldo       TYPE p DECIMALS 2 VALUE '2000.20',
*
*           END OF puesto,
*
*         END OF ls_empl_info.
*
*out->write( ls_empl_info ).    " para imprimir todo el contenido de la estructura
*out->write( ls_empl_info-direccion-calle ).  " para imprimir un unico campo de la estructura
*out->write( data = ls_empl_info name = 'informacion de empleado'). " para imprimir toda la estructura con un mensaje inform
*
*
*"Estrucutra profunda
*TYPES: BEGIN OF ty_flights,
*       flight_date TYPE /dmo/flight_date,
*       price TYPE /dmo/flight-price,
*       currency_code TYPE /dmo/flight-currency_code,
*       END OF TY_FLIGHTS.
*
*       DATA:BEGIN OF ls_flight_info,
*            carrier TYPE /dmo/flight-carrier_id VALUE 'AA',
*            connid TYPE /dmo/flight-connection_id VALUE '0018',
*            lt_flights TYPE TABLE OF ty_flights WITH EMPTY KEY, "hace referencia tanto al tipo creado en el types "ty_flights como a la tabla de base de datos
*            END OF ls_flight_info.
*
*            select *
*            from /dmo/flight
*            where carrier_id = 'AA'
*            into CORRESPONDING FIELDS OF TABLE @ls_flight_info-lt_flights.
*
*            out->write( data = ls_flight_info name = 'ls_flight_info' ).
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"FORMAS DE AÑADIR DATOS A LAS ESTRUCUTRAS
*TYPES: BEGIN OF ty_flights,
*       flight_date TYPE /dmo/flight_date,
*       price TYPE /dmo/flight-price,
*       currency_code TYPE /dmo/flight-currency_code,
*       END OF TY_FLIGHTS.
*
*       DATA:BEGIN OF ls_flight_info,
*            carrier TYPE /dmo/flight-carrier_id VALUE 'AA',
*            connid TYPE /dmo/flight-connection_id VALUE '0018',
*            lt_flights TYPE TABLE OF ty_flights WITH EMPTY KEY,
*            END OF ls_flight_info.
*
*      ls_flight_info-carrier = 'xx'.
*      ls_flight_info-connid = '0022'
*      ls_flight_info-ls_flights-flight_date = cl_abap_context_info=>get_system_date(  ).
*ls_flight_info-ls_flights-currency_code = 'USD'.
*ls_flight_info-ls_flights-price = '200'.
*out->write( |\n| ).
*out->write( data = ls_flight_info name = 'ls_flight_info' ).


"para las estructuras anidadas

   DATA:BEGIN OF ls_empl_info,

           BEGIN OF info,
             id       TYPE i VALUE 1234,
             nombre   TYPE string VALUE 'Pedro',
             apellido TYPE string VALUE  'Elvira',
           END OF info,

           BEGIN OF direccion,
             ciudad TYPE string VALUE 'Madrid',
             calle  TYPE string VALUE 'c. norfeo',
             pais   TYPE string VALUE  'España',
           END OF direccion,

           BEGIN OF puesto,
             departamento TYPE string VALUE 'IT',
             sueldo       TYPE p DECIMALS 2 VALUE '2000.20',

           END OF puesto,

         END OF ls_empl_info.

ls_empl_info = value #(
                       info = value #( id = 1234 nombre ='Juan' apellido = 'Martinez' )
                       direccion = value #( calle = 'Gran via' ciudad = 'Madrid' pais = 'España ')
                       puesto = value #( departamento = 'Finanzas' sueldo = '2000.00')
                     ).


out->write( data = ls_empl_info name = 'ls_empl_info' ).


ENDMETHOD.
ENDCLASS.
