Feature: Gestión del estado de las órdenes mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para consultar y crear el estado de las órdenes,
  Para que el estado de las órdenes se pueda gestionar y visualizar correctamente en la aplicación.

  Scenario: Creación del endpoint para consultar el estado de las órdenes
    Given que el sistema no tiene un endpoint para consultar el estado de las órdenes
    When se implementa el endpoint "GET /orders/:id/status"
    Then el sistema debe permitir consultar el estado de las órdenes en la base de datos
    And devolver una respuesta con código de estado 200 al consultar el estado exitosamente
    And mostrar el estado de la orden


  Scenario: Validación de la creación de órdenes por ID
    Given que el sistema recibe una solicitud "POST /orders"
    When el sistema crea la orden con ID "XXX"
    Then el sistema debe permitir consultar el estado de la orden con ID "XXX" mediante el endpoint "GET /orders/XXX/"
    And devolver una respuesta con el estado de la orden.