*** Settings ***
Resource            ../../environment.robot
Resource            ../Pages/LoginPage.robot
Resource            ../Pages/ResetPage.robot
Resource            LoginVariables.robot

*** Keywords ***
#Cenario: Login com usuario e senha validos
Dado que desejo acessar a clinicorp
    Valida Tela Login    ${telaLogin}  
Quando digitar usuario e senha validos
    Digita Usuario    ${usuario}
    Digita Senha      ${senha}
    Btn Entrar
Entao será exibida a home do sistema
    Valida Usuario Logado    ${nomeUsuario}

#Cenario: Login com usuario invalido
Quando digitar usuario invalido
    Fazer Login    ${userErro}    ${senha}
Entao será exibido a mensagem de dados invalidos
    Valida Erro Login    ${erroLogin}

#Cenario: Login com senha invalida
Quando digitar senha invalida
    Fazer Login    ${usuario}    ${passErro}

#Cenario: Login com usuario e senha invalida
Quando digitar usuario e senha invalidos
    Fazer Login    ${userErro}    ${passErro}

#Cenario: Reset de senha com envio por Email
Dado que esqueci minha senha
    Valida Tela Login    ${telaLogin} 
    Btn Esqueci Minha Senha
    Valida Tela Reset De Senha    ${telaReset}
Quando informar meu usuario
    Digita Usuario Reset    ${userReset}
E selecionar envio via Email
    Envia Senha Por Email
    Btn Enviar
Entao nova senha sera enviada
    Valida Envio senha    ${envioSenha}

#Cenario: Reset de senha com Envio por SMS
E selecionar envio via sms
    Envia Senha Por SMS
    Btn Enviar

#Cenario: Sair da tela de reset da senha
Quando selecionar o botao para voltar a tela de login
    Btn Voltar Login
Entao será exibido a tela inicial novamente
    Valida Tela Login    ${telaLogin} 

    