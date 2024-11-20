Feature: Gestión de asignación de mesas
  Como administrador del restaurante,
  Quiero gestionar la asignación de mesas,
  Para maximizar la eficiencia en la atención a los clientes.

  Scenario: Asignar una mesa a un cliente
    Given que hay mesas disponibles en el restaurante
    And el administrador está en la página de gestión de mesas
    When el administrador asigna la mesa "Mesa X" al cliente "Ejemplo" para X personas
    Then el sistema debe marcar la mesa "Mesa X" como ocupada
    And registrar la asignación en el sistema
    And mostrar un mensaje "Mesa asignada exitosamente a Ejemplo"