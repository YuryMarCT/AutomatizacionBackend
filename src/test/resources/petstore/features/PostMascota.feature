Feature: Crear mascota desde archivo JSON

  Background:
    * def mascotas = read('classpath:petstore/Datos/mascotas.json')
    * def baseUrl = 'https://petstore.swagger.io/v2/pet/'
    Given url baseUrl

  Scenario Outline: Registrar mascota usando datos de JSON
    * def mascota = mascotas[<mascota>]
    * request mascota
    When method post
    Then status 200
    And match $.name == mascota.name
    And match $.status == mascota.status
    And match $.category.name == mascota.category.name

    Examples:
      | mascota |
      | 0       |
      | 1       |