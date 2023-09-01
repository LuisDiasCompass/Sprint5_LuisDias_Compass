#language: pt

@regression
@shopping_cart
Funcionalidade: Shopping Cart
    SENDO um usuário do Advantage Online Shopping
    QUERO acessar o carrinho
    PARA para verificar os produtos

    Contexto: Estar na página do carrinho com itens
        Dado que adiciona um item no carrinho e acessa a página do carrinho
    
    Esquema do Cenário: Editar iten do carrinho
        Quando realiza a ação para editar um item do carrinho
        Então é redirecionado para página do produto
    
    Esquema do Cenário: Remover iten do carrinho
        Quando realiza a ação para remover um item do carrinho
        Então o item é removido
        E uma tela de carrinho vazio é exibida
    
    Esquema do Cenário: Checkout de usuário não logado no sistema
        Quando realiza o Checkout
        Então é redirecionado para página de login
    
    Esquema do Cenário: Checkout de usuário logado no sistema
        E esteja logado no sistema
        Quando realiza o Checkout
        Então é redirecionado para página de pagamento
