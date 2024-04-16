*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Test Cases ***
Verificar se ao preencher os campos formulário corretamente os dados são inseridos

    Dado que eu preencha os campos de formulário
    E clique no botão criar botão criar card
    Então identificar o card no time esperado

Verificar se é possível criar mais de um card se preenchermos os campos corretamente

    Dado que eu preencha os campos de formulário
    E clique no botão criar botão criar card
    Então identificar três cards no time esperado

Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    Dado que eu preencha os campos de formulário
    Então criar e identificar 1 card para cada time disponível