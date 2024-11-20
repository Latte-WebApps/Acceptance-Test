Feature: Gestión de la edición del inventario mediante endpoint
  Como desarrollador del sistema,
  Quiero crear un endpoint para la actualización del inventario,
  Para que el inventario se pueda editar y visualizar en la aplicación.

  Scenario: Creación del endpoint para la actualización del inventario
    Given que el sistema no tiene un endpoint para actualizar el inventario
    When se implementa el endpoint "PUT /inventory/:id"
    Then el sistema debe permitir la actualización de los productos en el inventario
    And devolver una respuesta con código de estado 200 al actualizar exitosamente el inventario

  Scenario: Validar la edición del inventario
    Given que el sistema recibe una solicitud para actualizar el inventario
    And el producto con ID "XXX" existe en la base de datos
    When la solicitud contiene informacion registrada
    Then el sistema debe actualizar el producto correctamente
    And devolver una respuesta con código de estado 200

