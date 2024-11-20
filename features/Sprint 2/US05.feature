Feature: Registro y actualización de costos de platos
  Como administrador del restaurante
  Quiero registrar el costo de cada plato
  Para poder calcular las ganancias netas diarias.

  Scenario: Registro de un nuevo costo de plato
    Given el administrador necesita registrar el costo de un nuevo plato
    When ingresa el costo en el sistema
    Then el sistema muestra el costo total del plato
    And refleja el costo en el cálculo de las ganancias diarias.

  Scenario: Actualización del costo de un plato existente
    Given el administrador desea actualizar el costo de un plato existente
    When ingresa los nuevos costos en el sistema
    Then el sistema recalcula las ganancias netas del día
    And actualiza la información con los nuevos valores.
