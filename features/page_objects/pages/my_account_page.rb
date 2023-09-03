require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página My Account para verificação de carregamento
    class MyAccountPage < SitePrism::Page
        set_url '/myAccount'
        
        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        
        # Titulo da seção My Account
        element :my_account_title, 'h3[translate="MY_ACCOUNT"]'
    end
end
