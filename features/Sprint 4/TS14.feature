Feature: Deployment del Backend
  Como usuario, quiero poder interactuar con todos los endpoints y sus respectivos requests a través de la documentación de Swagger, para probar y entender el comportamiento de la API.

  Scenario: Interacción con los endpoints en Swagger
    Given el usuario accede a la documentación de Swagger
    When interactúa con todos los endpoints y sus respectivos requests
    Then debe poder realizar pruebas exitosas de cada endpoint y obtener respuestas correctas.
