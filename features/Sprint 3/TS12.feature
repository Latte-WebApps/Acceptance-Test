Feature: Deployment de la Landing Page en GitHub Pages
  Como desarrollador del sistema,
  Quiero desplegar la Landing Page en GitHub Pages,
  Para que pueda ser accesible en línea.

  Scenario: Desplegar la Landing Page en GitHub Pages
    Given que la Landing Page está lista para ser desplegada
    When se realiza el despliegue de la Landing Page a GitHub Pages
    Then la Landing Page debe ser accesible en línea a través de la URL de GitHub Pages
    And la página debe cargarse correctamente sin errores