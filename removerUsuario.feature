Feature: Remover Usuário

    Como uma pessoa qualquer
    Desejo remover um usuário
    Para que suas informações não estejam mais registradas

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Deletar Usuário
    Given path "users"
    And path "72106d37-50e6-4400-b4d3-8d9ef08660fd"
    When method delete
    Then status 204

Scenario: Deletar Usuário com erro
    Given path "users"
    When method delete
    Then status 404




    