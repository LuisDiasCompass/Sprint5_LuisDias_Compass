#language: pt

@regression
@user
Funcionalidade: User
    SENDO um usuário do Advantage Online Shopping
    QUERO logar na aplicação
    PARA acessar as funcionalidades de usuário logado

    Contexto: Estar na home page e acessar o menu de login
        Dado que esteja na página inicial do e-commerce
        E o menu USER está aberto
    
    Cenário: Validar a abertura do modal de login
        Então o modal de login é aberto
    
    Cenário: Login convencional válido
        Quando realiza o login com usuário válido
        Então volta para home como usuário logado
    
    Esquema do Cenário: Login convencional inválido
        Quando realiza o login com usuário "<usuário>" e senha "<senha>"
        Então exibe a mensagem "<mensagem>" para login inválido
        Exemplos:
        |usuário          |senha            |mensagem         |
        |valid_user_data  |invalid_user_data|invalid_login_msg|
        |invalid_user_data|valid_user_data  |invalid_login_msg|
        
    Cenário: Login com campos vazios
        Quando deixa o login com usuário e senha vazios
        Então exibe a mensagem para campo obrigatório
    
    Cenário: Redirecionamento para página de cadastro
        Quando acessa a funcionalidade para criação de nova conta
        Então é redirecionado para página de cadastro
    
    Cenário: Logout
        E está logado no sistema e com o menu USER aberto
        Quando realiza o logout
        Então volta para home como usuário não logado no sistema
    
    Cenário: Acesso ao My Account
        E está logado no sistema e com o menu USER aberto
        Quando acessa a funcionalidade de gerenciamento de conta
        Então é redirecionado para página da conta
    
    Cenário: Acesso ao My Orders
        E está logado no sistema e com o menu USER aberto
        Quando acessa a funcionalidade de gerenciamento de pedidos
        Então é redirecionado para página de pedidos
        