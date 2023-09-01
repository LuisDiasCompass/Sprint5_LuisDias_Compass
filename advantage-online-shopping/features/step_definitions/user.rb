Dado('o menu USER está aberto') do
    @home.header.btn_menu_user.click
end

Então('o modal de login é aberto') do
    expect(@home.login_modal.visible?).to be_truthy
end

Quando('realiza o login com usuário válido') do
    @username = Factory::Static.static_data_two_args('valid_user_data', 'username')
    password = Factory::Static.static_data_two_args('valid_user_data', 'password')
    @home.login_modal.login(@username, password)
end
  
Então('volta para home como usuário logado') do
    expect(@home.header.logged_in_username.text).to eq @username
end

Quando('realiza o login com usuário {string} e senha {string}') do |username, password|
    username = Factory::Static.static_data_two_args(username, 'username')
    password = Factory::Static.static_data_two_args(password, 'password')
    @home.login_modal.login(username, password)
    @home.wait_loader
end
  
Então('exibe a mensagem {string} para login inválido') do |invalid_login|
    invalid_login_msg = Factory::Static.static_data_two_args('error_message', invalid_login)
    expect(@home.login_modal.login_error_msg.text).to eq invalid_login_msg
end

Quando('deixa o login com usuário e senha vazios') do
    @home.login_modal.input_username.click
    @home.login_modal.input_password.click
    @home.login_modal.btn_sign_in.click
end
  
Então('exibe a mensagem para campo obrigatório') do
    empty_username_msg = Factory::Static.static_data_two_args('error_message', 'empty_username_msg')
    empty_password_msg = Factory::Static.static_data_two_args('error_message', 'empty_password_msg')
    expect(@home.login_modal.label_username.text).to eq empty_username_msg
    expect(@home.login_modal.label_password.text).to eq empty_password_msg
end

Quando('acessa a funcionalidade para criação de nova conta') do
    @home.wait_loader
    @home.login_modal.btn_create_account.click
end
  
Então('é redirecionado para página de cadastro') do
    @register_page = Pages::RegisterPage.new
    expect(@register_page.form_title.visible?).to be_truthy
    expect(page.current_url).to include('/register')
end

Dado('está logado no sistema e com o menu USER aberto') do
    steps %{
        Quando realiza o login com usuário válido
        E o menu USER está aberto
    }
end

Quando('realiza o logout') do
    @home.header.btn_logged_in_sign_out.click
end
  
Então('volta para home como usuário não logado no sistema') do
    @home.header.wait_until_menu_user_invisible
    expect(@home.header.has_logged_in_username?).to be_falsey
end
  
Quando('acessa a funcionalidade de gerenciamento de conta') do
    @home.header.btn_logged_in_my_account.click
end

Então('é redirecionado para página da conta') do
    @my_account_page = Pages::MyAccountPage.new
    expect(@my_account_page.my_account_title.visible?).to be_truthy
    expect(page.current_url).to include('/myAccount')
end
  
Quando('acessa a funcionalidade de gerenciamento de pedidos') do
    @home.header.btn_logged_in_my_orders.click
end
  
Então('é redirecionado para página de pedidos') do
    @my_orders_page = Pages::MyOrdersPage.new
    expect(@my_orders_page.my_orders_title.visible?).to be_truthy
    expect(page.current_url).to include('/MyOrders')
end
  