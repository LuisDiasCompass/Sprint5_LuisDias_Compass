#language: pt

@regression
@product
Funcionalidade: Product
    SENDO um usuário do Advantage Online Shopping
    QUERO configurar um produto
    PARA para adicionar ao carrinho

    Contexto: Estar na página do produto
        Dado que esteja na página de um produto
    
    Cenário: Carregamento da página
        Então a página do produto é exibida corretamente
    
    Cenário: Selecionar a cor do produto
        Quando clica em uma opção de cor
        Então a cor é marcada como selecionada

    Esquema do Cenário: Validar seleção de quantidade pelos botões
        Quando valor quantidade é "<quantidade>" e clica no botão "<botão>"
        Então o campo quantidade tem seu valor alterado para "<valor>"
        Exemplos:
        |quantidade|botão    |valor|
        |1         |btn_plus |2    |
        |500       |btn_plus |501  |
        |999       |btn_plus |999  |
        |1         |btn_minus|1    |
        |500       |btn_minus|499  |
        |999       |btn_minus|998  |
    

    Esquema do Cenário: Validar a seleção de quantidade digitando no campo
        Quando insere no campo quantidade "<quantidade>"
        Então o campo quantidade tem seu valor alterado para "<valor>"
        Exemplos:
        |quantidade|valor|
        |0         |1    |
        |1         |1    |
        |500       |500  |
        |999       |999  |
        |1000      |999  |

    Cenário: Adicionar ao carrinho
        Quando seleciona uma quantidade e adiciona ao carrinho
        Então o item é adicionado corretamente

    Cenário: Retornar para categoria do produto
        Quando clica no botão da categoria
        Então é redirecionado para página da categoria do produto

    Cenário: Retornar para home
        Quando clica no botão HOME
        Então é redirecionado para home page
    