Feature: Marcar horas de entrada y salida para registro preciso
  Como empleado,
  Quiero registrar mis horas de entrada y salida,
  Para que mi asistencia sea registrada de manera precisa.

  Scenario: Registrar hora de entrada
    Given que el empleado está en la página de asistencia
    When el empleado marca su hora de entrada
    Then el sistema debe registrar la hora de entrada con la fecha actual
    And mostrar un mensaje de confirmación "Hora de entrada registrada correctamente"

  Scenario: Registrar hora de salida
    Given que el empleado ha registrado previamente su hora de entrada
    And está en la página de asistencia
    When el empleado marca su hora de salida
    Then el sistema debe registrar la hora de salida con la fecha actual
    And calcular el tiempo trabajado en el día
    And mostrar un mensaje de confirmación "Hora de salida registrada correctamente"

