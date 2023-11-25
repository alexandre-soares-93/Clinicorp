*** Settings ***
Resource        ../../environment.robot
Resource        ../Resource/LoginResource.robot

Test Setup          Abrir Clinicorp
Test Teardown       Fechar Clinicorp
*** Test Cases ***
Cenario: Login com usuario e senha validos
    Dado que desejo acessar a clinicorp
    Quando digitar usuario e senha validos
    Entao será exibida a home do sistema 

Cenario: Login com usuario invalido
    Dado que desejo acessar a clinicorp
    Quando digitar usuario invalido
    Entao será exibido a mensagem de dados invalidos

Cenario: Login com senha invalida
    Dado que desejo acessar a clinicorp
    Quando digitar senha invalida
    Entao será exibido a mensagem de dados invalidos

Cenario: Login com usuario e senha invalida
    Dado que desejo acessar a clinicorp
    Quando digitar usuario e senha invalidos
    Entao será exibido a mensagem de dados invalidos

Cenario: Reset de senha com envio por Email
    Dado que esqueci minha senha
    Quando informar meu usuario
    E selecionar envio via Email
    Entao nova senha sera enviada

Cenario: Reset de senha com Envio por SMS
    Dado que esqueci minha senha
    Quando informar meu usuario
    E selecionar envio via sms
    Entao nova senha sera enviada

Cenario: Sair da tela de reset da senha
    Dado que esqueci minha senha
    Quando selecionar o botao para voltar a tela de login
    Entao será exibido a tela inicial novamente
