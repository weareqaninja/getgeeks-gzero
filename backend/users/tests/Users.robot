*Settings*
Documentation           Users route test suite

Resource        ${EXECDIR}/resources/Base.robot

*Test Cases*
Add new user

    ${user}      Factory New User
    Remove User  ${user}

    ${response}         POST User   ${user}
    Status Should Be    201         ${response}

    ${user_id}          Set Variable        ${response.json()}[id]
    Should Be True      ${user_id} > 0