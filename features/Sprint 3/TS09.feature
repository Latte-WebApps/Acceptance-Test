Feature: Gestión de la consulta de empleados mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para consultar los empleados,
  Para que los datos de los empleados puedan ser consultados y visualizados correctamente en la aplicación.

  Scenario: Creación del endpoint para consultar los empleados
    Given que el sistema no tiene un endpoint para consultar los empleados
    When se implementa el endpoint "GET /employees"
    Then el sistema debe permitir consultar los datos de los empleados en la base de datos
    And devolver una respuesta con código de estado 200 al consultar los datos exitosamente
    And mostrar la información de los empleados

     Scenario: Configuración de la obtención de datos de empleados
    Given que el sistema tiene el endpoint "GET /employees" configurado
    When se consulta los empleados mediante la solicitud "GET /employees"
    Then el sistema debe devolver los datos de los empleados disponibles con sus detalles

  Scenario: Validación de la consulta de empleados
    Given que existen empleados registrados con IDs "XX1", "XX2" y "XX3"
    When se realiza una solicitud "GET /employees"
    Then el sistema debe devolver una respuesta con código de estado 200
    And mostrar la lista de empleados disponibles con sus detalles