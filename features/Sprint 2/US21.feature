Feature: Accesibilidad en dispositivos móviles para la landing page
  Como visitante
  Quiero que la landing page sea accesible y funcional en dispositivos móviles
  Para asegurarme de que puedo navegar y acceder a la información correctamente.

  Scenario: Accesibilidad correcta en dispositivos móviles
    Given el visitante accede a la landing page desde un dispositivo móvil
    When navega por la página
    Then el contenido debe ser accesible y funcional
    And todas las secciones deben ser fáciles de navegar en una pantalla pequeña.

  Scenario: Accesibilidad limitada en dispositivos móviles
    Given hay problemas con la accesibilidad de la página en dispositivos móviles
    When el visitante navega por la página en un dispositivo móvil
    Then se muestra un mensaje indicando que algunas funciones pueden no estar disponibles
    And se sugiere utilizar un dispositivo de escritorio para una experiencia completa.
