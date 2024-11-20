Feature: Visualización de productividad
  Como administrador del sistema,
  Quiero visualizar un gráfico de productividad de los empleados,
  Para analizar el desempeño en un período de tiempo específico.

   Scenario: Mostrar gráfico de productividad para un período de tiempo
    Given que el administrador selecciona un rango de fechas del "XX/XX/202X" al "XX/XX/202X"
    And el sistema tiene datos de productividad registrados para esos días
    When el administrador solicita el gráfico de productividad
    Then el sistema debe mostrar un gráfico con:
      | Fecha       | Horas Trabajadas | Productividad (%) |
      | XX/XX/202X | XX               | XX%               |
      | XX/XX/202X | XX               | XX%               |
    And mostrar un mensaje "Gráfico generado exitosamente"