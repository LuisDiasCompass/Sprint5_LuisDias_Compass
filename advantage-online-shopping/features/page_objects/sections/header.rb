module Sections
    class Header < SitePrism::Section
        element :logo, 'header  .logo'
        element :input_search, '#autoComplete'
        element :btn_search, '#menuSearch'
        element :btn_close_search, '[data-ng-click="closeSearchForce()"]'
        element :btn_cart, '#shoppingCartLink'
        elements :product_name_in_cart, '#product h3'
        element :quantity_last_product_add_in_cart, '.ng-scope .lastProduct'
    end
end
