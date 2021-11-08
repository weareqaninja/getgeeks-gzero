*Settings*
Documentation           Signup actions

*Keywords*
Go To Signup Form
    Go To       ${BASE_URL}/signup

    Wait For Elements State     css=.signup-form    visible     5

Fill Signup Form
    [Arguments]         ${user}

    Fill Text       id=name         ${user}[name]
    Fill Text       id=lastname     ${user}[lastname]
    Fill Text       id=email        ${user}[email]
    Fill Text       id=password     ${user}[password]

Submit Signup Form
    Click           css=.submit-button >> text=Cadastrar

User Should Be Registered

    ${expect_message}       Set Variable      css=p >> text=Agora você faz parte da Getgeeks. Tenha uma ótima experiência.    
    
    Wait For Elements State      ${expect_message}       visible     5
