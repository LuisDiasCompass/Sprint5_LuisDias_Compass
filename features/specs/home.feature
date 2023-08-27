#language: pt

@regression
@home
Funcionalidade: Home Page
    SENDO um usuário do Advantage Online Shopping
    QUERO navegar na home Page
    PARA acessar as funcionalidades da aplicação

    Contexto: Estar na home page
        Dado que acessa a página inicial do e-commerce
    
    Cenário: Carregamento da página
        Então o logotipo, o header e as categorias de produtos são exibidos corretamente

    Cenário: Realizar pesquisa de um produto
        Quando o digitar o nome de um produto na área de pesquisa
        Então deve ver uma lista de resultados
        E deve ver o nome, imagem e preço dos itens
    
    Esquema do Cenário: Links da seção FOLLOW US
        Quando clica no botão "<botão>"
        Então é redirecionado para página correta "<evento>"
        Exemplos:
        |botão       |evento  |
        |btn_facebook|facebook|
        |btn_twitter |twitter |
        |btn_linkedin|linkedin|
