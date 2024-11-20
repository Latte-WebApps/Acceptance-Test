Feature: Botón de llamada a la acción en la Landing Page
  Como visitante de la Landing Page,
  Quiero interactuar con un botón de llamada a la acción,
  Para acceder a un demo del producto o contactar al equipo detrás del producto.

  Scenario: Mostrar el botón de llamada a la acción en la Landing Page
    Given que el usuario está en la Landing Page
    When la página se carga completamente
    Then el sistema debe mostrar un botón con el texto "Solicitar Demo"
    And el botón debe ser visible y accesible para el usuario