Feature: Pesquisar Usuário

    Como uma pessoa qualquer
    Desejo pesquisar usuário por nome ou e-mail
    Para ser capaz de encontrar um usuário cadastrado facilmente

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Pesquisar Usuário
    Given path "search"
    Given param value = "anna"
    When method get 
    Then status 200   

Scenario: Pesquisar Usuário sem informar dados
    Given path "search"
    Given param value = ""
    When method get 
    Then status 200 