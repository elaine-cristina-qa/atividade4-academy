Feature: Encontrar um usuário

    Como uma pessoa qualquer
    Desejo consultar os dados de um usuário
    Para visualizar as informações deste usuário

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Validar retorno de sucesso da consulta de usuário por id
    Given path "users"
    And path "95beee14-4dd9-4b33-a044-413e2ae99549"
    When method get
    Then status 200