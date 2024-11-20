Feature: Deployment de la Aplicación Frontend
  Como desarrollador del sistema,
  Quiero desplegar la Aplicación Frontend,
  Para que pueda ser accesible en línea.

  Scenario: Desplegar la Aplicación Frontend en un entorno de producción
    Given que la Aplicación Frontend está lista para ser desplegada
    When se realiza el despliegue de la Aplicación Frontend en un entorno de producción
    Then la Aplicación Frontend debe ser accesible en línea a través de la URL proporcionada
    And la página debe cargarse correctamente sin errores
