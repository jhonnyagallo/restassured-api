#language:es

Característica: Creación de booking

  @regresion
  Escenario: Crear booking
    Dado que se envia headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y se envia un body 'booking'
    Dado que se envía la petición POST al Path booking
    Cuando se envía la petición recibo un código 200