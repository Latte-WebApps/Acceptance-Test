Feature: Gestión de la edición de empleados mediante endpoint
  Como desarrollador del sistema,
  Quiero configurar y validar un endpoint para la edición de empleados,
  Para que los empleados puedan ser editados correctamente en la aplicación.

  Scenario: Configuración del endpoint para la edición de empleados
    Given que el sistema tiene un endpoint para editar empleados
    When se configura el endpoint "PUT /employees/{id}"
    Then el sistema debe permitir la edición de los datos de un empleado en la base de datos
    And devolver una respuesta con código de estado 200 si la edición es exitosa
    And los datos del empleado deben ser actualizados correctamente en la base de datos


  Scenario: Validación de la edición de empleados
    Given que existe un empleado con ID "001" y los datos "nombre: Juan, puesto: Cocinero"
    When se realiza una solicitud "PUT /employees/001" con los nuevos datos "nombre: Pedro, puesto: Mesero"
    Then el sistema debe devolver una respuesta con código de estado 200
    And los datos del empleado con ID "001" deben ser actualizados correctamente
    And la respuesta debe incluir los nuevos datos del empleado "nombre: Pedro, puesto: Mesero"