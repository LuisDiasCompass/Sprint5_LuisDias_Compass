require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página de cadastro para verificação de carregamento
    class RegisterPage < SitePrism::Page
        set_url '/register'
        
        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Titulo da seção Create Account
        element :form_title, '#registerPage [translate="CREATE_ACCOUNT"]'
    end
end
