Feature: Gestión de la consulta del inventario mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para consultar el inventario,
  Para que los datos del inventario puedan ser consultados y visualizados correctamente en la aplicación.

  Scenario: Creación del endpoint para consultar el inventario
    Given que el sistema no tiene un endpoint para consultar el inventario
    When se implementa el endpoint "GET /inventory"
    Then el sistema debe permitir consultar el inventario en la base de datos
    And devolver una respuesta con código de estado 200 al consultar los datos exitosamente
    And mostrar los productos y su cantidad en inventario

  Scenario: Configuración de la obtención de datos de inventario
    Given que el sistema tiene el endpoint "GET /inventory" configurado
    When se consulta el inventario mediante la solicitud "GET /inventory"
    Then el sistema debe devolver los productos disponibles con sus cantidades y descripciones

  Scenario: Validación de la consulta de inventario
    Given que existen productos registrados en el inventario con IDs "XX1", "XX2" y "XX3"
    When se realiza una solicitud "GET /inventory"
    Then el sistema debe devolver una respuesta con código de estado 200
    And mostrar la lista de productos disponibles con sus detalles