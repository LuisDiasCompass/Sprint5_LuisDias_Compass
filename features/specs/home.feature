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

    Esquema do Cenário: Validar botões do Header para usuário não logado
        E não esteja logado no sistema
        Quando "<ação>" no "<botão>" do header
        Então "<evento>"
        Exemplos:
        |ação |botão        |evento                                                 |
        |click|OUR PRODUCTS |A página home é rolada até a seção Our Products        |
        |click|SPECIAL OFFER|A página home é rolada até a seção Special Offer       |
        |click|POPULAR ITENS|A página home é rolada até a seção Popular Itens       |
        |click|CONTACT US   |A página home é rolada até a seção Contact Us          |
        |click|SEARCH       |O campo de pesquisa é aberto                           |
        |click|USERS        |O campo de login é aberto                              |
        |click|SHOPPING CART|É direcionado para página do Shopping Cart             |
        |hover|SHOPPING CART|Um menu com os itens e opções do Shopping Cart é aberto|

    Cenário: Validar botão USER do Header para usuário logado
        E esteja logado no sistema
        Quando clica no botão "USER"
        Então um menu com opções para usuário logado é aberto

    Cenário: Realizar pesquisa de um produto
        E com o campo de pesquisa aberto
        Quando o digitar o nome de um produto na área de pesquisa
        E clicar no botão de pesquisa
        Então deve ver uma lista de resultados
    
    Esquema do Cenário: Menu Shopping Cart na home page
        E existem itens no carrinho
        E o mouse está sobre o botão "SHOPPING CART"
        E o menu do carrinho está aberto
        Quando clica no "<botão>"
        Então "<evento>"
        Exemplos:
        |botão   |evento                                  |
        |Remove  |o item é removido do carrinho           |
        |CHECKOUT|é redirecionado para página de pagamento|


    Esquema do Cenário: Acessar itens das seções da home page
        Quando clica no "<botão>" da "<seção>"
        Então "<evento>"
        Exemplos:
        |botão       |seção        |evento                                  |
        |Shop Now    |OUR PRODUCTS |é redirecionado para página da categoria|
        |SEE OFFER   |SPECIAL OFFER|é redirecionado para página da oferta   |
        |EXPLORE NOW |EXPLORE NOW  |é redirecionado para página da oferta   |
        |View Details|POPULAR ITENS|é redirecionado para página do item     |

    Cenário: Carrossel de imagens da seção EXPLORER NOW
        Quando clica no botão para trocar imagem
        Então a imagem deve mudar

    Esquema do Cenário: Fomulário da seção CONTACT US
        Quando preenche o formulário com dados "<tipo>"
        E clica no botão "SEND"
        Então "<evento>"
        Exemplos:
        |tipo     |evento|
        |válido   |a mensagem "Thank you for contacting Advantage support." é exibida|
        |inválido |a mensagem "Invalid e-mail address." é exibida                    |
        |em branco|nada acontece                                                     |

    Cenário: CHAT WITH US da seção CONTACT US
        Quando clica no botão "CHAT WITH US"
        Então o chat é aberto em nova janela

    Esquema do Cenário: Links da seção FOLLOW US
        Quando clica no "<botão>"
        Então "<evento>"
        Exemplos:
        |botão   |evento|
        |Facebook|a página do Facebook é aberta em nova aba|
        |Twitter |a página do Twitter é aberta em nova aba |
        |Linkedin|a página do Linkedin é aberta em nova aba|

    Cenário: Botão GO UP
        Quando rola a página para baixo
        E o botão "GO UP" aparece
        E clica no botão
        Então a página retorna ao topo
