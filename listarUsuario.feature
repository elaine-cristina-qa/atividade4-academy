Feature: Listar Usuário
    Como uma pessoa qualquer
    Desejo consultar todos os usuários cadastrados
    Para ter as informações de todos os usuários

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Validar retorno de sucesso da listagem de usuários
    Given path "users"
    When method get
    Then status 200

Scenario: Validar o response body da listagem de usuários
    Given path "users"
    When method get
    #Valida se o retorno é um array com os usuários
    Then status 200
    And match response == '#[]'