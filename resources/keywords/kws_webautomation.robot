*** Settings ***
Documentation     Aqui estarão presentes todas as keywords dos testes web

Resource    ../package.robot


*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/
${EMAIL}      testes@testesPrimeHr.com.br
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
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Title Should Be    ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible    ${HOME.HEADER_OPTIONS}
        
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    ${HOME.INPUT_BUSCA}    ${PRODUTO}

Clicar no botão pesquisar
    Click Element    ${HOME.BTN_PESQUISAR}

Conferir se o produto "${PRODUTO}" foi listado no site
    Sleep                               5
    Page Should Contain Image           xpath=${HOME.IMG_BLOUSE}
    Title Should Be                     ${HOME.TITLE_PAGE_PESQUISA}

Conferir mensagem "No results were found for your search "itemNãoExistente""
    Sleep    5
    Wait Until Element Is Visible    ${HOME.MSG_NAO_EXISTE}
    Title Should Be    ${HOME.TITLE_PAGE_PESQUISA}

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Mouse Over    xpath=${HOME.MOVE_MOUSE}

Clicar na sub categoria "${SUB_CATEGORIA}"
    Click Element   ${HOME.BTN_SUB_CATEGORIA}

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Title Should Be    ${HOME.TITTLE_PAGE_SUMMER}
    Sleep    3

Clicar em "Sign in"
    Click Element    ${CADASTRO.BTN_SINGIN}

Informar um e-mail válido
    Title Should Be    ${CADASTRO.TITTLE_PAGE_LOGIN}
    Input Text    id=${CADASTRO.INPUT_EMAIL}    ${EMAIL}

Clicar em "Create an account"
    Click Button    id=${CADASTRO.BTN_SUBMIT}
    Sleep    5

Preencher os dados obrigatórios
    Input Text        ${CADASTRO.INPUT_NOME}    ${NOME}
    Input Text        ${CADASTRO.INPUT_SOBRENOME}   ${SOBRENOME}
    Input Password    ${CADASTRO.INPUT_SENHA}    ${PASSWORD}
    Input Text        ${CADASTRO.INPUT_PRIMEIRO_NOME}   ${NOME}
    Input Text        ${CADASTRO.INPUT_ULTIMO_NOME}    ${SOBRENOME}
    Input Text        ${CADASTRO.INPUT_ENDERECO}    ${ENDERECO}
    Input Text        ${CADASTRO.INPUT_CIDADE}    ${CIDADE}
    Select From List By Label    ${CADASTRO.SELECT_ESTADO}    ${ESTADO}
    Input Text        ${CADASTRO.INPUT_ZIP_CODE}   ${ZIPCODE}
    Select From List By Label    ${CADASTRO.SELECT_PAIS}    ${PAIS}
    Input Text        ${CADASTRO.INPUT_PHONE}    ${CELULAR}

Submeter cadastro
    Click Element    ${CADASTRO.BTN_VALIDAR}

Conferir se o cadastro foi efetuado com sucesso  
    Title Should Be    ${CADASTRO.TITTLE_PAGE_CADASTRO}
    Sleep    5



    
    