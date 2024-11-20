Feature: Gestión de pedidos mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para el registro de pedidos,
  Para que los pedidos sean almacenados y su recibo sea accesible desde la aplicación.

  Scenario: Creación del endpoint orders
    Given que el sistema no tiene un endpoint para gestionar pedidos
    When se implementa el endpoint "POST /orders"
    Then el sistema debe permitir registrar pedidos en la base de datos
    And devolver una respuesta con código de estado 201 al registrar un pedido exitosamente


  Scenario: Configuración del recibo de órdenes
    Given que hay pedidos registrados en la base de datos
    And el endpoint "GET /orders/:id/receipt" está implementado
    When un usuario solicita el recibo de un pedido con ID ya registrado
    Then el sistema debe devolver un recibo del pedido
    And devolver una respuesta con código de estado 200

 Scenario: Validación del recibo de órdenes
    Given que un usuario solicita el recibo de un pedido
    When el pedido con ID "XXX" no existe en la base de datos
    Then el sistema debe devolver una respuesta con código de estado 404
    And mostrar el mensaje "Pedido no encontrado"