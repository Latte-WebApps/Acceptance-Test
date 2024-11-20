Feature: Gestión de la eliminación de empleados mediante endpoint
  Como desarrollador del sistema,
  Quiero configurar y validar un endpoint para la eliminación de empleados,
  Para que los empleados puedan ser eliminados correctamente de la aplicación.

  Scenario: Configuración del endpoint para la eliminación de empleados
    Given que el sistema tiene un endpoint para eliminar empleados
    When se configura el endpoint "DELETE /employees/{id}"
    Then el sistema debe permitir la eliminación de empleados de la base de datos
    And devolver una respuesta con código de estado 200 si la eliminación es exitosa
    And el empleado debe ser eliminado correctamente de la base de datos

  Scenario: Validación de la eliminación de empleados
    Given que existe un empleado con ID "XXX"
    When se realiza una solicitud "DELETE /employees/XXX"
    Then el sistema debe devolver una respuesta con código de estado 200
    And el empleado con ID "XXX" debe ser eliminado correctamente
    And la respuesta debe confirmar la eliminación del empleado