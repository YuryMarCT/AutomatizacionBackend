Feature: Eliminar registro de una mascota

  Background:
    * def mascotaEliminar = read('classpath:petstore/Datos/mascotas.json')
    Given url 'https://petstore.swagger.io/v2/pet/'
    * path mascotaEliminar[0].id

  Scenario: Eliminar una mascota por ID
    When method delete
    Then status 200

  Scenario: Verificar que la mascota eliminada no existe
    * path mascotaEliminar[0].id
    When method get
    Then status 404