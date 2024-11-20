Feature: Deployment de la Aplicación Backend
  Como desarrollador del sistema,
  Quiero desplegar la Aplicación Backend,
  Para que pueda ser accesible en línea.

  Scenario: Desplegar la Aplicación Backend en un entorno de producción
    Given que la Aplicación Backend está lista para ser desplegada
    When se realiza el despliegue de la Aplicación Backend en un entorno de producción
    Then la Aplicación Backend debe ser accesible en línea a través de la URL proporcionada
    And la API debe responder correctamente a las solicitudes