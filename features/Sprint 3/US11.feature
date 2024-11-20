Feature: Informes de platos más y menos vendidos
  Como administrador del sistema,
  Quiero visualizar los platos más y menos vendidos,
  Para tomar decisiones basadas en el desempeño de los menús en un período de tiempo específico.

  Scenario: Mostrar el plato más vendido
    Given que el administrador selecciona un rango de fechas del "XX/XX/202X" al "XX/XX/202X"
    And el sistema tiene datos de ventas registrados en ese período
    When el administrador solicita el informe del plato más vendido
    Then el sistema debe mostrar:
      | Plato          | Ventas |
      | Ejemplo        | XX   |
    And mostrar un mensaje "Informe del plato más vendido generado exitosamente"

  Scenario: Mostrar el plato menos vendido
    Given que el administrador selecciona un rango de fechas del "01/11/2024" al "15/11/2024"
    And el sistema tiene datos de ventas registrados en ese período
    When el administrador solicita el informe del plato menos vendido
    Then el sistema debe mostrar:
      | Plato          | Ventas |
      | Ejemplo        | XX      |
    And mostrar un mensaje "Informe del plato menos vendido generado exitosamente"