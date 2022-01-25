*Settings*
Documentation           Base Test

Library     Browser
Library     Collections
Library     String

Library     factories/Users.py
Library     Utils.py

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/SignupActions.robot
Resource    actions/GeekActions.robot

Resource    Database.robot
Resource    Helpers.robot
Resource    Services.robot

*Variables*
${BASE_URL}         https://getgeeks-papito.herokuapp.com

*Keywords*
Start Session
    New Browser             ${BROWSER}        headless=${HEADLESS}      slowMo=00:00:00
    New Page                ${BASE_URL}
    Set Viewport Size       1280     768

After Test
    ${shot_name}        Screenshot Name
    Take Screenshot     fullPage=True       filename=${shot_name}