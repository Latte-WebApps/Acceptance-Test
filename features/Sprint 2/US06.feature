Feature: Registro de pedidos desde un dispositivo móvil
  Como trabajador
  Quiero registrar los pedidos desde un dispositivo móvil
  Para agilizar el proceso.

  Scenario: Registro exitoso de un pedido desde el móvil
    Given el trabajador ingresa un pedido desde el móvil
    When el pedido es enviado al sistema
    Then el sistema registra el pedido correctamente
    And el sistema confirma el registro al trabajador.

  Scenario: Error en el registro por problemas de conexión
    Given ocurre un error en la conexión
    When el trabajador intenta registrar un pedido
    Then el sistema muestra un mensaje de error
    And no guarda el pedido en el sistema.
