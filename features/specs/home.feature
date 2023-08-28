#language: pt

@regression
@home
Funcionalidade: Home Page
    SENDO um usuário do Advantage Online Shopping
    QUERO navegar na home Page
    PARA acessar as funcionalidades da aplicação

    Contexto: Estar na home page
        Dado que esteja na página inicial do e-commerce
    
    Cenário: Carregamento da página
        Então o logotipo, o header e as categorias de produtos são exibidos corretamente
    @test
    Cenário: Realizar pesquisa de um produto
        Quando realizar a pesquisa de um produto válido
        Então deve ver uma lista de resultados
        E deve ver o nome, imagem e preço dos itens

    Esquema do Cenário: Links da seção FOLLOW US
        Quando clica no botão "<botão>" da seção FOLLOW US
        Então é redirecionado para página correta "<page>"
        Exemplos:
        |botão       |page    |
        |btn_facebook|facebook|
        |btn_twitter |twitter |
        |btn_linkedin|linkedin|
