Feature: Generación de Reportes Financieros
  Como administrador, quiero generar reportes de finanzas para analizar el desempeño del restaurante.

  Scenario: Generación de un reporte de ingresos
    Given que el administrador solicita un reporte de ingresos
    When el sistema procesa la solicitud
    Then se genera un informe detallado de los ingresos y el administrador recibe una notificación.
