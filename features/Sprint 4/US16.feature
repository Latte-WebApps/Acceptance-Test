Feature: Optimizar la carta de platos según la demanda histórica
  Como administrador, quiero optimizar la carta de platos según la demanda histórica, para mejorar la oferta del restaurante.

  Scenario: Optimización basada en ventas
    Given que el sistema analiza las estadísticas de ventas
    When se generan recomendaciones
    Then el sistema presenta una carta personalizada para días específicos.

  Scenario: Ajuste del menú según demanda
    Given que el administrador revisa los datos de ventas
    When ajusta la carta del menú
    Then el menú refleja los platos más demandados.
