*** Settings ***
Documentation        Aqui estarão presentes todas as variáveis/elementos da tela Home do site automationpractice
*** Variables ***
&{HOME}
...    TITLE_PAGE_HOME=My Store  
...    HEADER_OPTIONS=//*[@id="block_top_menu"]/ul
...    INPUT_BUSCA=search_query_top
...    BTN_PESQUISAR=submit_search
...    IMG_BLOUSE=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
...    TITLE_PAGE_PESQUISA=Search - My Store
...    MSG_NAO_EXISTE=//*[@id="center_column"]/p
...    MOVE_MOUSE=//*[@id="block_top_menu"]/ul/li[1]/a
...    BTN_SUB_CATEGORIA=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
...    TITTLE_PAGE_SUMMER=Summer Dresses - My Store