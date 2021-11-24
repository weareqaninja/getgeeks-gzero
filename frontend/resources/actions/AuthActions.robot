*Settings*
Documentation           Authentication actions

*Variables*
${INPUT_EMAIL}          id=email
${INPUT_PASS}           id=password

*Keywords*
Go To Login Page
    Go To       ${BASE_URL}

    Wait For Elements State     css=.login-form     visible     5

Fill Credentials
    [Arguments]         ${user}

    Fill Text           ${INPUT_EMAIL}        ${user}[email]
    Fill Text           ${INPUT_PASS}         ${user}[password]

Submit Credentials
    Click               css=.submit-button >> text=Entrar

User Should Be Logged In
    [Arguments]         ${user}

    ${element}              Set Variable        css=a[href="/profile"]
    ${expected_fullname}    Set Variable        ${user}[name] ${user}[lastname]

    Wait For Elements State     ${element}      visible     5
    Get Text                    ${element}      equal       ${expected_fullname}

Should Be Type Email
    Get Property           ${INPUT_EMAIL}        type        equal       email