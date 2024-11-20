Feature: Optimizar la carta del restaurante con sugerencias basadas en ventas
  Como administrador
  Quiero recibir sugerencias basadas en datos de ventas
  Para optimizar la carta del restaurante.

  Scenario: Generación de sugerencias basadas en ventas
    Given el sistema analiza los datos de ventas del restaurante
    When se generan sugerencias basadas en patrones de consumo
    Then el sistema presenta recomendaciones al administrador
    And estas incluyen platos a mantener, ajustar o eliminar.

  Scenario: Ajuste de la carta según sugerencias
    Given el administrador recibe sugerencias generadas por el sistema
    When ajusta la carta del restaurante según las recomendaciones
    Then el sistema actualiza la oferta de platos
    And se refleja en el menú disponible para los clientes.
