Feature: Programar y modificar turnos del personal
  Como administrador del sistema,
  Quiero programar y modificar los turnos del personal,
  Para asegurar una distribución adecuada de las tareas y horarios.

  Scenario: Programar un turno para un empleado
    Given que el administrador está en la página de gestión de turnos
    And el administrador proporciona los datos del turno:
      | Empleado       | Fecha       | Hora de inicio | Hora de fin|
      | Ejemplo        | XX/XX/202X  | XX:00          | XX:00      |
    When el administrador guarda el turno
    Then el sistema debe registrar el turno en  Employees
    And mostrar un mensaje "Turno programado exitosamente"

  Scenario: Modificar un turno existente
    Given que un empleado ya se encuentra registrado
    And el administrador está en la página de gestión de turnos
    When el administrador accede a la opcion de modificar
    Then el sistema debe actualizar el turno en la agenda del empleado con la nueva informacion registrada
    And mostrar un mensaje "Turno modificado exitosamente"