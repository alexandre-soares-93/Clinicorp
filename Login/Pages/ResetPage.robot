*** Settings ***
Resource        ../../environment.robot

*** Keywords ***
Btn Esqueci Minha Senha
    Click Element    xpath://a[@class="login__link-button"]

Valida Tela Reset De Senha
    [Arguments]    ${resetSenha}
    Wait Until Element Is Enabled    xpath://h2[@class="fadeIn"]    timeout=01:30
    Element Text Should Be           xpath://h2[@class="fadeIn"]    ${ResetSenha}

Digita Usuario Reset
    [Arguments]    ${usuario}
    Input Text     id:recovery_user    ${usuario}

Envia Senha Por Email
    Click Element    id:recoveryType_0-label

Envia Senha Por SMS
    Element Should Be Enabled    id:recoveryType_1-label

Btn Enviar
    Click Element    xpath://div[@class="full-container"]

Valida Envio senha
    [Arguments]    ${envioSenha}
    Wait Until Element Is Enabled    xpath://p[@class]    timeout=01:30
    Element Text Should Be           xpath://p[@class]    ${envioSenha}


Btn Voltar Login
    Click Element    xpath://a[@class="login__link-button"]