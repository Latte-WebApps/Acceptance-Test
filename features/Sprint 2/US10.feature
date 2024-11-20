Feature: Comparar la productividad del personal entre períodos
  Como administrador
  Quiero comparar la productividad del personal entre diferentes períodos
  Para identificar mejoras.

  Scenario: Comparación exitosa de productividad
    Given el administrador selecciona diferentes períodos para la comparación
    When el sistema realiza la comparación
    Then el sistema muestran las diferencias de productividad entre los períodos
    And los resultados incluyen métricas clave como horas trabajadas y rendimiento.

  Scenario: Falta de datos para la comparación
    Given no hay datos disponibles para algunos períodos seleccionados
    When el administrador intenta realizar la comparación
    Then el sistema muestra un mensaje indicando que faltan datos
    And sugiere verificar o ajustar los períodos seleccionados.
