#language: pt

@regression
@product
Funcionalidade: Product
    SENDO um usuário do Advantage Online Shopping
    QUERO configurar um produto
    PARA para adicionar ao carrinho

    Contexto: Estar na página do produto
        Dado que esteja na página de um produto
    @test
    Cenário: Carregamento da página
        Então a página do produto é exibida corretamente
    
    Cenário: Selecionar a cor do produto
        Quando selecionar uma cor
        Então a cor é marcada como selecionada 
    
    Esquema do Cenário: Validar seleção de quantidade
        E o campo quantidade tem o valor "<quantidade>"
        Quando muda a quantidade "<evento>"
        Então o campo quantidade tem seu valor alterado "<valor>"
        Exemplos:
        |quantidade|evento             |valor|
        |1         |aumentar_quantidade|2    |
        |500       |aumentar_quantidade|501  |
        |999       |aumentar_quantidade|999  |
        |1         |diminuir_quantidade|1    |
        |500       |diminuir_quantidade|499  |
        |999       |diminuir_quantidade|998  |
    

    Esquema do Cenário: Validar a seleção de quantidade digitando no campo
        Quando insere uma quantidade "<quantidade>"
        Então o campo quantidade tem seu valor alterado "<valor>"
        Exemplos:
        |quantidade|valor|
        |0         |1    |
        |1         |1    |
        |500       |500  |
        |999       |999  |
        |1000      |999  |
    
    Cenário: Adicionar ao carrinho
        Quando adiciona uma quantidade do item no carrinho
        Então o item é adicionado corretamente
    
    Cenário: Retornar para categoria do produto
        Quando volta para página de categorias
        Então é redirecionado para página da categoria do produto
    
    Cenário: Retornar para home
        Quando retorna para home
        Então a home page é exibida corretamente
    