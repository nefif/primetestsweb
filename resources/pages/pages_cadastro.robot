*** Settings ***
Documentation        Aqui estarão presentes todas as variáveis/elementos da tela Cadastro do site automationpractice
*** Variables ***
&{CADASTRO}
...    BTN_SINGIN=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
...    TITTLE_PAGE_LOGIN=Login - My Store
...    INPUT_EMAIL=email_create
...    BTN_SUBMIT=SubmitCreate
...    INPUT_NOME=customer_firstname
...    INPUT_SOBRENOME=customer_lastname
...    INPUT_SENHA=passwd
...    INPUT_PRIMEIRO_NOME=firstname
...    INPUT_ULTIMO_NOME=lastname
...    INPUT_ENDERECO=address1
...    INPUT_CIDADE=city
...    SELECT_ESTADO=id_state 
...    INPUT_ZIP_CODE=postcode
...    SELECT_PAIS=id_country 
...    INPUT_PHONE=phone_mobile 
...    BTN_VALIDAR=submitAccount
...    TITTLE_PAGE_CADASTRO=My account - My Store