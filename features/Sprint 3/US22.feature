Feature: Cambio de idioma en la Landing Page
  Como visitante de la Landing Page,
  Quiero utilizar un switch button para cambiar el idioma,
  Para visualizar el contenido en el idioma que prefiera.

    Scenario: Cambiar el idioma de la Landing Page a español
    Given que el idioma actual de la Landing Page es "EN"
    And el switch button está visible
    When el usuario selecciona "ES" en el switch button
    Then el sistema debe cambiar todos los textos de la Landing Page al español
    And el idioma seleccionado debe persistir mientras el usuario navega por el sitio