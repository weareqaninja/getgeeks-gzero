*Settings*
Documentation           BeGeek test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*
Be a Geek

    # Dado que eu tenho um usuário comum
    ${user}     Factory User Be Geek

    # Faço login na plataforma Getgeeks
    Do Login    ${user}

    # Quando submeto o formulário para me tornar um Geek (prestador de serviços)

    # Então devo ver a mensagem de sucesso