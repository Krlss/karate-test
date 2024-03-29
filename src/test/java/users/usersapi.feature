Feature: Get user on petstore

  Background:
    * url 'https://petstore.swagger.io/v2/'

  Scenario: Crear un usuario con:  "id": 999 "username": "Krlss", "firstName": "Carlos", "lastName": "Pico", "email": "krlss@gmail.com", "password": "1234", "phone": "1234", "userStatus": 0
    Given path 'user'
    * def requestPayload = read('create.user.json')
    And request requestPayload
    When method POST
    Then status 200    

  Scenario: Buscar el usuario creado
    Given path 'user/Krlss'
    When method GET
    Then status 200

Scenario: Actualizar el nombre y el correo del usuario
    Given path 'user/Krlss'
    * def requestPayloadUpdate = read('update.user.json')
    And request requestPayloadUpdate
    When method PUT
    Then status 200

Scenario: Buscar el usuario actualizado
    Given path 'user/Krlss'
    When method GET
    Then status 200
    And response.firstName == 'UpdatedName'
    And response.email == 'updatedemail@gmail.com'

Scenario: Eliminar el usuario
    Given path 'user/Krlss'
    When method DELETE
    Then status 200