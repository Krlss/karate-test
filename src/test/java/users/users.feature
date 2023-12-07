Feature: Get user on petstore

  Background:
    * def urlBase 'https://petstore.swagger.io/v2/'
    * def usersPath = 'user'


  Scenario: Crear un usuario
    Given url urlBase + usersPath
    And request { "id": 0, "username": "Krlss", "firstName": "Carlos", "lastName": "Pico", "email": "this@this.com", "password": "pwd", "phone": "0990172331", "userStatus": 0 }
    When method POST
    Then status 200

  Scenario: Buscar el usuario creado
    Given url urlBase + usersPath + '/Krlss'
    When method GET
    Then status 200

  Scenario: Actualizar el usuario y el correo electronico del usuario creado
    Given url urlBase + usersPath + '/Krlss'
    And request { "id": 0, "firstName": "Carlos", "lastName": "Pico", "email": "nuevo@correo.com" }
    When method PUT
    Then status 200

  Scenario: Buscar el usuario actualizado
    Given url urlBase + usersPath + '/Krlss'
    When method GET
    Then status 200

  Scenario: Eliminar el usuario creado
    Given url urlBase + usersPath + '/Krlss'
    When method DELETE
    Then status 200