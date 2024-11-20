Feature: Monitorear la asistencia del personal
  Como administrador, quiero monitorear la asistencia del personal, para identificar patrones y tomar decisiones.

  Scenario: Monitoreo exitoso
    Given que el administrador accede al módulo de asistencia
    When consulta la asistencia de un empleado
    Then el sistema muestra los registros de ausencias y tardanzas.

  Scenario: Consulta en tiempo real
    Given que el administrador revisa la asistencia en tiempo real
    When se accede a la información
    Then se muestra la asistencia actual del personal.
