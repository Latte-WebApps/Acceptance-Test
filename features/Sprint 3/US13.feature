Feature: Registrar y actualizar inventario
  Como administrador del sistema,
  Quiero registrar y actualizar productos en el inventario,
  Para llevar un control eficiente de los productos disponibles.

  Scenario: Registrar un nuevo producto en el inventario
    Given que el administrador está en la página de gestión de inventario
    And el administrador proporciona los datos del producto:
      | Nombre       | Cantidad | Precio   |
      | Ejemplo      | XX      | XX        |
    When el administrador guarda el nuevo producto
    Then el sistema debe agregar el producto al inventario
    And mostrar un mensaje "Producto registrado exitosamente"

  Scenario: Actualizar la informacion de un producto existente
    Given que el producto  está registrado en el inventario
    And el administrador está en la página de gestión de inventario
    When el administrador accede al boton actualizar
    Then el sistema debe actualizar el registro con la nueva informacion
    And mostrar un mensaje "Producto actualizado exitosamente"
