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
        E com o campo de pesquisa aberto
        Quando o digitar o nome de um produto na área de pesquisa
        Então deve ver uma lista de resultados

    Esquema do Cenário: Links da seção FOLLOW US
        Quando clica no "<botão>"
        Então "<evento>"
        Exemplos:
        |botão   |evento  |
        |facebook|facebook|
        |twitter |twitter |
        |linkedin|linkedin|
