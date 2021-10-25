*** Settings ***
Documentation            Todas as configurações de Setup e Teardown do projeto estarão aqui.
Resource                  package.robot

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php


*** Keywords ***
Abrir navegador
    Open Browser           browser=${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser