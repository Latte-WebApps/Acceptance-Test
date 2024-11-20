Feature: Implementación de diseño responsivo para la landing page
  Como desarrollador
  Quiero asegurar que la landing page esté completamente adaptada para dispositivos móviles
  Incluyendo la navegación y el contenido.

  Scenario: Visualización correcta de la landing page en dispositivos móviles
    Given la landing page se visualiza en un dispositivo móvil
    When se accede a la página
    Then la navegación debe ser accesible mediante un menú hamburguesa
    And el contenido debe ajustarse correctamente al tamaño de la pantalla
    And debe mantener la funcionalidad y legibilidad sin necesidad de hacer zoom.

  Scenario: Navegación correcta en dispositivos móviles con menú hamburguesa
    Given el menú hamburguesa está implementado correctamente
    When un usuario interactúa con el menú en un dispositivo móvil
    Then el sistema debe desplegar el menú correctamente
    And debe permitir la navegación fluida entre las secciones de la página.
