*Settings*
Documentation           Attempt BeGeek test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session For Attempt Be Geek

*Variables*
${long_desc}    Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unity

*Test Cases*
Should Not Be a Geek
    [Template]      Attempt Be a Geek

    desc        Formato o seu PC            A descrição deve ter no minimo 80 caracteres
    desc        ${long_desc}                A descrição deve ter no máximo 255 caracteres
    desc        ${EMPTY}                    Informe a descrição do seu trabalho
    whats       11                          O Whatsapp deve ter 11 digitos contando com o DDD
    whats       999999999                   O Whatsapp deve ter 11 digitos contando com o DDD
    whats       ${EMPTY}                    O Whatsapp deve ter 11 digitos contando com o DDD
    cost        aaaa                        Valor hora deve ser numérico
    cost        aa12                        Valor hora deve ser numérico
    cost        $%^&                        Valor hora deve ser numérico
    cost        ${EMPTY}                    Valor hora deve ser numérico

*Keywords*
Attempt Be a Geek
    [Arguments]         ${key}      ${input_field}      ${output_message}

    ${user}     Factory User    attempt_be_geek

    Set To Dictionary   ${user}[geek_profile]   ${key}      ${input_field}

    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    ${output_message}

    Take Screenshot     fullPage=True

Start Session For Attempt Be Geek

    ${user}     Factory User    attempt_be_geek

    Start Session
    Do Login    ${user}
    Go To Geek Form
    



