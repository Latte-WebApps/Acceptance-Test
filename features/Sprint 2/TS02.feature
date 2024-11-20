Feature: Optimización de SEO básica para la landing page
  Como desarrollador
  Quiero aplicar prácticas básicas de SEO en la landing page
  Para mejorar la visibilidad en motores de búsqueda.

  Scenario: Configuración correcta de etiquetas meta en la landing page
    Given se han añadido etiquetas meta relevantes a la landing page
    When se visualiza el código fuente de la página
    Then las etiquetas meta deben estar correctamente configuradas
    And deben ser visibles y contener la información adecuada para mejorar el SEO.

  Scenario: Análisis de SEO con herramientas de optimización
    Given la optimización SEO está configurada correctamente en la página
    When se analiza la página con herramientas SEO
    Then la página debe mostrar una puntuación mejorada
    And debe superar la puntuación de la versión anterior en cuanto a factores de SEO clave.
