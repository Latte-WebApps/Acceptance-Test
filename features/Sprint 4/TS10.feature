Feature: Autenticación de usuarios
  Como desarrollador, quiero implementar una API que permita autenticar a los usuarios en el sistema.

  Scenario: Autenticación exitosa de un usuario a través de la API
    Given que el endpoint destinado a la autenticación de usuarios está disponible
    When se envía una solicitud POST con las credenciales del usuario al endpoint
    Then se recibe una señal de confirmación (200)
    And el sistema permite el acceso al usuario.
