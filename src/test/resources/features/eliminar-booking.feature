#language:es

Característica: eliminacion de booking

  Antecedentes: Create token
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y se envia un body 'token'
    Dado que se envía la petición POST al Path auth
    Cuando se envía la petición recibo un código 200
    Y guarda el token

  Escenario: eliminar booking
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y agrego la sesion al header
    Y se envia un body 'booking'
    Dado que se envía la petición DELETE al Path booking/910
    Cuando se envía la petición recibo un código 201
