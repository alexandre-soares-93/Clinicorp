*** Settings ***
Library            SeleniumLibrary
Resource           ./Login/Pages/LoginPage.robot

*** Variables ***
${url}            https://sistema.clinicorp.com/login/
${browser}        Chrome

*** Keywords ***
Abrir Clinicorp
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1

Fechar Clinicorp
    Close Browser

Fazer Login
    [Arguments]    ${usuario}    ${senha}
    Digita Usuario    ${usuario}
    Digita Senha      ${senha}
    Btn Entrar
    
