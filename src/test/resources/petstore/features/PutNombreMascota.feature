Feature: Actualizar nombre de mascota desde archivo JSON

  Background:
    * def mascotaActualizar = read('classpath:petstore/Datos/mascotaActualizarNombre.json')
    * def baseUrl = 'https://petstore.swagger.io/v2/pet/'
    Given url baseUrl

  Scenario: Actualizar nombre de una mascota
    * request mascotaActualizar
    When method put
    Then status 200
    And match $.name == mascotaActualizar.name
    And match $.status == mascotaActualizar.status
    And match $.category.name == mascotaActualizar.category.name