*** Settings ***

Resource        ../pages/commons/hooks.pages.commons.robot
Resource        ../config/page_register.config.robot

Test Setup      Start Test
Test Teardown   Finish Test

*** Test Cases ***

Calculo Soma Cinco Macro
    CalculoSomaCinco

Calculo Soma Cinco Separado
    Clicar no botao dois
    Clicar no botao mais
    Clicar no batao tres
    Clicar no botao igual
    Verificar Soma 5    