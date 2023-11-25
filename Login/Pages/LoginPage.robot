*** Settings ***
Resource        ../../environment.robot

*** Keywords ***
Valida Tela Login
    [Arguments]    ${telaLogin}
    Wait Until Element Is Enabled    xpath://div[@class="login__welcome-message"]//p    timeout=01:30
    Element Text Should Be           xpath://div[@class="login__welcome-message"]//p    ${telaLogin}

Digita Usuario
    [Arguments]    ${usuario}
    Input Text     id:username    ${usuario}

Digita Senha
    [Arguments]    ${senha}
    Input Text     id:password    ${senha}

Check Lembrar Usuario
    Click Element    xpath://i[@class="md-icon material-icons md-text--inherit"]

Btn Entrar
    Click Element    xpath://div[@class="full-container"]

Valida Usuario Logado
    [Arguments]    ${nomeUsuario}
    Wait Until Element Is Enabled    xpath://div[@class="header__user-infos--items"]//span    timeout=01:30
    Element Text Should Be           xpath://div[@class="header__user-infos--items"]//span    ${nomeUsuario}

Valida Erro Login
    [Arguments]    ${erroLogin}
    Wait Until Element Is Enabled    xpath://div[@class="login__error-container"]    timeout=01:30
    Element Text Should Be           xpath://div[@class="login__error-container"]    ${erroLogin}


