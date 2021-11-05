*Settings*
Documentation           Geek actions

*Keywords*
Go To Geek Form
    Click           css=a[href="/be-geek"] >> text=Seja um Geek

    Wait For Elements State     css=.be-geek-form       visible         5

Fill Geek Form
    [Arguments]     ${geek}

    Fill Text       xpath=//label[text()="Whatsapp"]/..//input          ${geek}[whats]
    Fill Text       xpath=//label[text()="Descrição"]/../textarea       ${geek}[desc]

    ${ele_printer}          Set Variable	    xpath=//label[text()="Conserta Impressora?"]/../select
    Select Options By       ${ele_printer}      value       ${geek}[printer_repair]

    ${ele_work}             Set Variable	    xpath=//label[text()="Modelo de trabalho"]/../select
    Select Options By       ${ele_work}         text       ${geek}[work]

    Fill Text       xpath=//label[text()="Valor da sua hora"]/../input      ${geek}[cost]

Submit Geek Form
    Click           css=button >> text=Quero ser um Geek

Geek Form Should Be Success

    ${expect_message}       Set Variable      css=p >> text=Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp.
    
    Wait For Elements State      ${expect_message}       visible     5