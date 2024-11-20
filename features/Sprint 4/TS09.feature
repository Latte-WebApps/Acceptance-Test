Feature: Registrar usuarios por una API
  Como desarrollador, quiero implementar una API que permita registrar nuevos usuarios al sistema.

  Scenario: Registro exitoso de un usuario a través de la API
    Given que el endpoint destinado al registro de usuarios está disponible
    When se envía una solicitud POST con los datos del usuario ingresados al endpoint
    Then se recibe una señal de confirmación (201).
