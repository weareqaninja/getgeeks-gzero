*Settings*
Documentation           Users route


*Keywords*
POST User
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${API_USERS}/users
    ...             json=${payload}
    ...             expected_status=any

    [return]  ${response}

DELETE User
    [Arguments]     ${token}

    ${headers}      Create Dictionary       Authorization=${token}

    ${response}     DELETE
    ...             ${API_USERS}/users
    ...             headers=${headers}
    ...             expected_status=any

    [return]  ${response}

GET User
    [Arguments]     ${token}

    ${headers}      Create Dictionary       Authorization=${token}

    ${response}     GET
    ...             ${API_USERS}/users
    ...             headers=${headers}
    ...             expected_status=any

    [return]  ${response}

PUT User
    [Arguments]     ${token}        ${payload}

    ${headers}      Create Dictionary       Authorization=${token}

    ${response}     PUT
    ...             ${API_USERS}/users
    ...             json=${payload}
    ...             headers=${headers}
    ...             expected_status=any

    [return]  ${response}