Feature: Registrar gastos imprevistos para control financiero
  Como administrador financiero, quiero registrar gastos imprevistos, para mantener un control exhaustivo sobre los gastos del restaurante.

  Scenario: Registro de gasto imprevisto
    Given que el administrador necesita registrar un gasto imprevisto
    When ingresa los detalles del gasto en el sistema
    Then el sistema lo guarda en la categoría correspondiente y actualiza el balance de gastos.

  Scenario: Clasificación de gasto
    Given que el administrador ha registrado un gasto imprevisto
    When se ingresa el gasto
    Then el sistema clasifica correctamente el gasto en la categoría adecuada y ajusta los reportes financieros.
