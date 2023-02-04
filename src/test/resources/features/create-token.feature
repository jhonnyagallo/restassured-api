#language:es

Característica: Creación de token

  @regresion
  Escenario: Crear token
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y se envia un body 'token'
    Dado que se envía la petición POST al Path auth
    Cuando se envía la petición recibo un código 200