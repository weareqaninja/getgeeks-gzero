*Settings*
Documentation           Login test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*
User login

    ${user}                  Factory User   login

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged In        ${user}

Incorrect Pass
    [Tags]          inv_pass

    ${user}         Create Dictionary       email=papito@hotmail.com        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]          user_404

    ${user}         Create Dictionary       email=papito@404.com        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]          inv_email

    ${user}         Create Dictionary       email=papito.com.br        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Should Be Type Email

# Desafio 1 do módulo PRO
# Automatizar 3 novos casos de testes: Email obrigatório, Senha obrigatória, Campos obrigatórios
# Entrega: no Github
