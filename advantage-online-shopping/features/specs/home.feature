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
        Então a home page é exibida corretamente
    
    Cenário: Realizar pesquisa de um produto
        Quando realizar a pesquisa de um produto válido
        Então deve ver uma lista de resultados
        E deve ver a descrição dos itens
    
    Cenário: Carrossel de imagens da seção EXPLORER NOW
        Quando selecionar uma imagem
        Então a imagem é marcada como selecionada
    
    Esquema do Cenário: Links da seção FOLLOW US
        Quando acessa a rede social "<link>" da seção FOLLOW US
        Então é redirecionado para página correta "<page_url>"
        Exemplos:
        |link         |page_url    |
        |facebook_link|facebook_url|
        |twitter_link |twitter_url |
        |linkedin_link|linkedin_url|
