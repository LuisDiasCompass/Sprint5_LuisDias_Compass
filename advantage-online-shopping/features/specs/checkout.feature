#language: pt

@regression
@checkout
Funcionalidade: Checkout
    SENDO um usuário do Advantage Online Shopping
    QUERO realizar o checkout
    PARA para finalizar compras

    Contexto: Estar na página de checkout
        Dado que realiza o checkout de compra válida

    Cenário: Finalizar compra com cartão de crédito válido
        E está na seção de seleção de pagamento
        Quando seleciona a opção cartão de credito
        E realiza o pagamento com dados válidos
        Então a compra é realizada com sucesso
