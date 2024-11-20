Feature: Registro de usuario
  Como visitante, quiero registrarme en la aplicación para poder gestionar mi negocio eficientemente.

  Scenario: Registro exitoso de usuario
    Given el visitante está en la página de registro
    When completa los campos obligatorios y hace clic en "Registrarse"
    Then el sistema debe crear una cuenta.

  Scenario: Registro con datos incorrectos
    Given el visitante está en la página de registro
    When completa los campos obligatorios con información incorrecta y hace clic en "Registrarse"
    Then el sistema deberá rechazar la operación y pedirle que ingrese sus datos correctamente.
