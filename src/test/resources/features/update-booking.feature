#language:es

Característica: Actualizacion de booking

  Antecedentes: Create token
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y se envia un body 'token'
    Dado que se envía la petición POST al Path auth
    Cuando se envía la petición recibo un código 200
    Y guarda el token

  @regresion
  Escenario: Actualizar todo booking
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
      | Accept       | application/json |
    Y agrego la sesion al header
    Y se envia un body 'booking'
    Dado que se envía la petición PUT al Path booking/1999
    Cuando se envía la petición recibo un código 200

  Escenario: Actualizar parcialmente booking
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
      | Accept       | application/json |
    Y agrego la sesion al header
    Y se envia un body 'parcialbooking'
    Dado que se envía la petición PATCH al Path booking/1999
    Cuando se envía la petición recibo un código 200