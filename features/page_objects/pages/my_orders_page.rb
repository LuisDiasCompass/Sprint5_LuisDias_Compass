require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página My Orders para verificação de carregamento
    class MyOrdersPage < SitePrism::Page
        set_url '/MyOrders'
        
        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        
        # Titulo da seção My Orders
        element :my_orders_title, 'h3[translate="MY_ORDERS"]'
    end
end
