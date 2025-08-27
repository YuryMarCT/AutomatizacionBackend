Feature: Listar los usuario que se encuentran existentes

  Background:
    * def baseUrl = 'https://reqres.in/api'
    Given url baseUrl

  # Metodo GET: Lista los usuarios que hay existentes
  Scenario: Listar los usuarios que se encuentran existentes
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[*].id contains 7

    # Para los metodos POST, PUT y DELETE: No se pudieron automatizar porque se esta generando
    # un {"error":"Missing API key"}