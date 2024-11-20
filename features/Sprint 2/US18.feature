Feature: Presentación clara del producto en la landing page
  Como visitante
  Quiero ver una presentación clara del producto de administración de restaurantes en la landing page
  Para entender sus características y beneficios.

  Scenario: Presentación visible y detallada del producto
    Given el visitante accede a la landing page
    When navega a la sección de presentación
    Then el sistema muestra un resumen detallado del producto
    And incluye características clave y beneficios destacados.

  Scenario: Problema con la carga de contenido en la presentación
    Given ocurre un problema con la carga de contenido
    When el visitante accede a la sección de presentación
    Then el sistema muestra un mensaje de error indicando el problema
    And se sugiere recargar la página o intentar más tarde.
