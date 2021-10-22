*** Settings ***
Documentation     Aqui estarão presentes todas as keywords dos testes web

Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/
${EMAIL}      testes@testesPrimeHero.com.br
${NOME}        Néfi
${SOBRENOME}    Fernandes
${PASSWORD}    12345
${ENDERECO}    Rua Teste,23
${CIDADE}    Teste
${ESTADO}    Alabama
${ZIPCODE}    12345
${PAIS}         United States   
${CELULAR}    +558155598598




*** Keywords ***
Abrir Navegador
    Open Browser    browser=${BROWSER} 
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close Browser

Acessar a página home do site Automation Practice
    Go To    ${URL}
    Title Should Be    My Store
    Wait Until Element Is Visible    xpath=//*[@id="block_top_menu"]/ul
        
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Element    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Sleep                               5
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Title Should Be                     Search - My Store

Conferir mensagem "No results were found for your search "itemNãoExistente""
    Sleep    5
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p
    Title Should Be    Search - My Store

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over    xpath=//*[@id="block_top_menu"]/ul/li[1]/a

Clicar na sub categoria "Summer Dresses"
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Title Should Be    Summer Dresses - My Store
    Sleep    3

Clicar em "Sign in"
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a

Informar um e-mail válido
    Title Should Be    Login - My Store
    Input Text    id=email_create    ${EMAIL}

Clicar em "Create an account"
    Click Button    id=SubmitCreate
    Sleep    5

Preencher os dados obrigatórios
    Input Text        name=customer_firstname    ${NOME}
    Input Text        id=customer_lastname    ${SOBRENOME}
    Input Password    id=passwd    ${PASSWORD}
    Input Text        id=firstname    ${NOME}
    Input Text        id=lastname    ${SOBRENOME}
    Input Text        id=address1    ${ENDERECO}
    Input Text        id=city    ${CIDADE}
    Select From List By Label    id=id_state    ${ESTADO}
    Input Text        id=postcode    ${ZIPCODE}
    Select From List By Label    id=id_country    ${PAIS}
    Input Text        id=phone_mobile    ${CELULAR}

Submeter cadastro
    Click Element    id=submitAccount

Conferir se o cadastro foi efetuado com sucesso  
    Title Should Be    My account - My Store
    Sleep    5



    
    