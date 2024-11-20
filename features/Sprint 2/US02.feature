Feature: Alertas de inventario bajo
  Como administrador del inventario
  Quiero recibir alertas cuando los recursos estén por debajo de la cantidad mínima
  Para poder reponerlos a tiempo y evitar faltantes en la operación diaria.

  Scenario: Alerta generada por cantidad mínima alcanzada
    Given un recurso ha alcanzado o está por debajo de la cantidad mínima en el inventario
    When el sistema detecta la cantidad baja
    Then el sistema envía una alerta al administrador
    And actualiza el estado del inventario con la alerta.

  Scenario: Sin alerta generada por cantidad suficiente
    Given un recurso está por encima de la cantidad mínima en el inventario
    When el administrador revisa el inventario
    Then no se genera ninguna alerta
    And el inventario se mantiene actualizado.
