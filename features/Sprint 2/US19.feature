Feature: Visualización de las características principales en la landing page
  Como visitante
  Quiero ver las características principales del producto en la landing page
  Para evaluar si cumple con mis necesidades.

  Scenario: Características principales visibles
    Given el visitante accede a la landing page
    When visita la sección de características
    Then el sistema muestra las características principales del producto
    And el visitante puede ver los beneficios clave y funcionalidades.

  Scenario: Características no disponibles debido a un problema de carga
    Given el contenido de características no se carga correctamente
    When el visitante visita la sección de características
    Then el sistema muestra un mensaje indicando que el contenido está temporalmente no disponible
    And sugiere intentar de nuevo más tarde o recargar la página.
