#language:es
Característica: Get Booking

  Escenario: Consulta Booking
    Dado que se envía la petición GET al Path Booking
    Cuando se envía la petición recibo un código 200
    Entonces se valida el esquema de la respuesta con el archivo 'getbooking-schema'


  Escenario: Consulta Booking especifico
    Dado que se envía la petición GET al Path Booking/1621
    Cuando se envía la petición recibo un código 200
    Entonces se valida el esquema de la respuesta con el archivo 'getbookingID-schema'
    Y validar valores de la respuesta de booking
    |nombre|apellido|precio|deposito|fecha_inicio|fecha_fin|informacion|
    |Josh      |Allen        | 111     | true       |2018-01-01           |2019-01-01         |super bowls           |

      #estes es un escenario outline
  Esquema del escenario: Consultas booking
    Dado que se envía la petición <method> al Path <path>
    Cuando se envía la petición recibo un código <codigo>
    Entonces se valida el esquema de la respuesta con el archivo '<schema>'


    Ejemplos: booking
      | method | path        | codigo | schema               |
      | GET    | booking     | 200    | getbooking-schema    |
      | GET    | booking/19993 | 200    | getbookingID-schema |
