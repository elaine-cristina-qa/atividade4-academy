Feature: Criar usuário

    Como uma pessoa qualquer
    Desejo registrar informações de usuário
    Para poder manipular estas informações livremente

Background: Base url
    Given url "https://crud-api-academy.herokuapp.com/api/v1"

Scenario: Não informando os campos
    Given path "users"
    When method post
    Then status 400

Scenario: Não informando o campo email
    Given path "users"
    Given request { name: "Elaine Ferreira" }
    When method post
    Then status 400

Scenario: Não informando o campo name
    Given path "users"
    Given request { email: "elaine-andrade2@hotmail.com" }
    When method post
    Then status 400

Scenario: Usuário Criado com sucesso
    Given path "users"
    Given request { name: "Nany Ferreira", email: "elaine-andrade242125@hotmail.com"}
    When method post
    Then status 201

Scenario: Usuário com Nome > 100 caracteres
    Given path "users"
    Given request { name: "aaSZBiDsJzkoUBRcUjlEIgefpUrqEYyfzQEBAItJHezcgQFBBqGJXkoNFgEKFCpETuGTDAeLeenLutNwlTGIEuXKcbWieLmzGtSKf", email: "elaine-andrade2@hotmail.com"}
    When method post
    Then status 400

Scenario: Usuário com Nome = 100 caracteres
    Given path "users"
    Given request { name: "aaSZBiDsJzkoUBRcUjlEIgefpUrqEYyfzQEBAItJHezcgQFBBqGJXkoNFgEKFCpETuGTDAeLeenLutNwlTGIEuXKcbWieLmzGtSS", email: "elaine-andrade271288@hotmail.com"}
    When method post
    Then status 201

Scenario: Usuário com E-mail > 60 caracteres
    Given path "users"
    Given request { name: "Jose de Andrade", email: "hauhauhkfdlsndndndndnfu_bhdjsbbbbdndndndnbnd@googlelemail.com"}
    When method post
    Then status 400

Scenario: Usuário com E-mail = 60 caracteres
    Given path "users"
    Given request { name: "Jose de Andrade", email: "hauhauhkfdlsndndndndnfu_bhdjsbbbbdndnndnbn2@googlelemail.com"}
    When method post
    Then status 201

Scenario: Usuário com E-mail = 60 caracteres
    Given path "users"
    Given request { name: "Jose de Andrade", email: "helaine-andrade2"}
    When method post
    Then status 400