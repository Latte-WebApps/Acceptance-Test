Feature: Cálculo automático de horas trabajadas
  Como administrador del sistema,
  Quiero que el sistema calcule automáticamente las horas trabajadas por cada empleado,
  Para garantizar un registro preciso y reducir errores manuales.

  Scenario: Calcular horas trabajadas en un día
    Given que el empleado ha registrado su hora de entrada
    And el empleado ha registrado su hora de salida
    When el sistema calcula las horas trabajadas
    Then el sistema debe registrar las horas trabajadas durante el día