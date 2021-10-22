*** Settings ***    
Documentation    Neste arquivo estarão disponíveis os exercícios de automação do Prime Hero

*** Variables ***
# variável do tipo dicionário
&{PESSOA}    
...    nome=Néfi    
...    sobrenome=Fernandes    
...    idade=29    
...    cpf=12345678910    
...    profissao=desenvolvedor    
...    idioma=portugues

# variábel do tipo lista
@{FRUTAS}    Banana    Abacaxi    Limão    Uva    Maçã    Mamão    Melão

*** Test Cases ***
Cenario: Imprimir as informações de uma pessoa
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.cpf}
    Log To Console    ${PESSOA.profissao}
    Log To Console    ${PESSOA.idioma}

Cenario: Imprimir uma lista de itens
    [Tags]            LISTA
    Log To Console    ${FRUTAS}
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[3]}

Cenario: Somando dois numeros
    [Tags]                SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}    Somar dois numeros "5689" e "5689" com sucesso
    Log To Console    ${RESULTADO} 

Cenario: Montar email com informações do usuario
    [Tags]        EMAIL
    ${EMAIL}    Montar email com informações     nefi    fernandes    29 
    Log To Console    ${EMAIL}    

Cenario: Contando de 0 a 9
    [Tags]        CONTAR
    Contar de 0 a 9

Cenario: Percorrendo lista de frutas
    [Tags]    LISTA_FRUTAS
    Percorrer itens de uma lista

Cenario: Percorrendo de 0 a 10
    [Tags]    LISTA_NUMEROS
    Imprimir numeros de 0 a 10

Cenario: Imprimindo lista de paises
    [Tags]    LISTA_PAISES
    Imprirmir lista de paises

Cenario: Imprimindo numeros com IF
    [Tags]    LISTA_SE 
    Imprimir numero 5 ou 8

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    [Return]       ${SOMA}

Somar dois numeros "${NUM_A}" e "${NUM_B}" com sucesso
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    [Return]       ${SOMA}

Montar email com informações
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${MONTAR_EMAIL}    Catenate    ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    [Return]    ${MONTAR_EMAIL}

Contar de 0 a 9
    FOR    ${COUNT}    IN RANGE    0    9
        Log To Console  ${COUNT}        
    END

Percorrer itens de uma lista
    @{FRUTAS}    Create List    banana    maçã    abacaxi    melão    kiwi
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}            
    END

Imprimir numeros de 0 a 10
    FOR    ${COUNT}    IN RANGE    0    11
        Log To Console    Estou no número: ${COUNT}
    END

Imprirmir lista de paises
    @{PAISES}    Create List    Brasil    Portugal    Canadá    Nova Zelandia    Itália     
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console     ${PAIS}        
    END

Imprimir numero 5 ou 8
    FOR    ${COUNT}    IN RANGE    0    9    
        IF    '${COUNT}' == '5'
            Log To Console    Estou no numero ${COUNT}
        ELSE IF    '${COUNT}' == '8'
            Log To Console    Estou no numero ${COUNT}
        END        
    END