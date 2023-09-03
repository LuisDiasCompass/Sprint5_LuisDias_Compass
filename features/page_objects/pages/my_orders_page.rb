require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class MyOrdersPage < SitePrism::Page
        set_url '/MyOrders'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :my_orders_title, 'h3[translate="MY_ORDERS"]'
    end
end
