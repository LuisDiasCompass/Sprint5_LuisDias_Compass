#language: pt

@regression
@checkout
Funcionalidade: Checkout
    SENDO um usuário do Advantage Online Shopping
    QUERO realizar o checkout
    PARA para finalizar compras

    Contexto: Estar na página de checkout
        Dado que realiza o checkout de compra válida
        E que está na seção de seleção de pagamento

    @checkout_with_valid_card
    Cenário: Finalizar compra com cartão de crédito válido
        Quando seleciona a opção cartão de credito
        E realiza o pagamento com cartão de crédito válido
        Então a compra é realizada com sucesso
    
    @checkout_with_valid_safepay
    Cenário: Finalizar compra com SafePay
        Quando seleciona a opção SafePay
        E realiza o pagamento com credenciais válidas
        Então a compra é realizada com sucesso
