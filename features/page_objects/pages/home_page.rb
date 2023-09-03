require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/our_products'
require_relative '../sections/login_modal'
require_relative '../sections/contact_us'

module Pages

    # Mapeamento dos principais elementos e funções disponíveis na home page
    class HomePage < SitePrism::Page
        set_url '/'
        
        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Seção Our Products
        section :our_products, Sections::OurProducts, '#our_products'

        # Modal de login
        section :login_modal, Sections::LoginModal, 'login-modal .PopUp'

        # Seção Contact Us
        section :contact_us, Sections::ContactUs, '#contact_us'
        elements :btn_slider_steps, '.slider-steps .ng-scope'
        
        # Loader de carregamento da página
        element :loader, 'body > .loader'
        
        # Realiza busca por produto
        def search_for product
            header.btn_search.click
            header.input_search.set product
            wait_loader
            header.btn_search.click
            header.btn_close_search.click
        end

        # Aguarda o logo de carregamento
        def wait_loader
            wait_until_loader_visible
            wait_until_loader_invisible
        end
    end
end
