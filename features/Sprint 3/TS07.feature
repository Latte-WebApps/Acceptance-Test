Feature: Gestión de la eliminación de órdenes mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para eliminar órdenes,
  Para que las órdenes puedan ser eliminadas de la base de datos y no aparezcan en la aplicación.

  Scenario: Configuración del endpoint para eliminar órdenes
    Given que el sistema no tiene un endpoint para eliminar órdenes
    When se implementa el endpoint "DELETE /orders/:id"
    Then el sistema debe permitir eliminar órdenes de la base de datos
    And devolver una respuesta con código de estado 200 al eliminar exitosamente la orden
    And mostrar el mensaje "Orden eliminada con éxito"


  Scenario: Validación de la eliminación de una orden inexistente
    Given que el sistema no tiene una orden con ID "XXX"
    When se realiza una solicitud "DELETE /orders/XXX"
    Then el sistema debe devolver una respuesta con código de estado 404
    And mostrar el mensaje "Orden no encontrada"