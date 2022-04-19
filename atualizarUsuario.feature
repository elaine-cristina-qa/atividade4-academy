Feature: Atualizar Usuário

    Como uma pessoa qualquer
    Desejo atualizar as informações de determinado usuário
    Para ter o registro de suas informações atualizadas

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Alterar nome  
    Given path "users"
    And path "95beee14-4dd9-4b33-a044-413e2ae99549"
    Given request { name: "Elaine Ferreira", email: "sucesso_1@googleee.com"}
    When method put
    Then status 200