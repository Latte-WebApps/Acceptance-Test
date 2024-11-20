Feature: Registro Automático de Pedidos en un Historial
  Como administrador, quiero registrar automáticamente los pedidos en un historial, para analizar los datos posteriormente.

  Scenario: Registro de un pedido en un historial
    Given que el trabajador ha completado un pedido
    When el pedido es confirmado en el sistema
    Then el sistema guarda automáticamente el pedido en el historial y confirma el registro al trabajador.