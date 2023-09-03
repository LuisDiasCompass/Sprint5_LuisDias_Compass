require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página de login acessada realizando checkout através do carrinho
    # não estando logado no sistema.
    class LoginPage < SitePrism::Page
        set_url '/login'

        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Redirecionamento para página de cadastro
        element :btn_registration, '#registration_btn'

        # Elementos do formulário de login
        element :input_login_name, '[name="usernameInOrderPayment"]'
        element :input_login_password, '[name="passwordInOrderPayment"]'
    end
end
