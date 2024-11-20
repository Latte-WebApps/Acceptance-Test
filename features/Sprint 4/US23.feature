Feature: Inicio de sesión
  Como usuario, quiero iniciar sesión en la aplicación para acceder a mi cuenta y gestionar mis finanzas.

  Scenario: Inicio de sesión exitoso
    Given el usuario está registrado
    When ingresa sus credenciales correctas
    Then debe poder acceder a su cuenta.

  Scenario: Inicio de sesión con credenciales incorrectas
    Given el usuario está registrado
    When ingresa sus credenciales de manera incorrecta
    Then se le indicará volver a ingresar sus datos correctamente.
