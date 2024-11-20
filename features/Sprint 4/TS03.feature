Feature: Implementación de Accesibilidad Web
  Como desarrollador, quiero asegurar que la landing page cumpla con los estándares de accesibilidad web (WCAG) para usuarios con discapacidades.

  Scenario: Navegación con Teclado
    Given que la landing page está cargada
    When un usuario navega utilizando solo el teclado
    Then todos los elementos interactivos deben ser accesibles y enfocados correctamente.

  Scenario: Uso con Lectores de Pantalla
    Given que la landing page está cargada
    When un usuario utiliza un lector de pantalla
    Then el contenido debe ser legible y navegable con el lector de pantalla.
