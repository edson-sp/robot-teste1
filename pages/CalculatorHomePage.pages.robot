*** Settings ***

Resource    ../components/componentes.robot

*** Keywords ***
CalculoSomaCinco
    WAit Until Element Is Visible    ${botaoDois}    timeout=2

    Click Element                    ${botaoDois}
    Click Element                    ${botaoMais}
    Click Element                    ${botaoTres}
    Click Element                    ${botaoIgual}

Execute Javascript       document.getElementsByClassName('display')[0].textContent === "0"

Clicar no botao dois
    Click Element            ${botaoDois}

Clicar no batao tres
    ClicK Element            ${botaoTres}

Clicar no botao mais
    Click Element            ${botaoMais}

Clicar no botao igual
    Click Element            ${botaoIgual}

Verificar Soma 5
Wait For Condition       return document.getElementsByClassName('display')[0].textContent === "0"        timeout=2