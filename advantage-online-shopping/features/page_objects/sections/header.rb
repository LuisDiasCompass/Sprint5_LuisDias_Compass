module Sections
    class Header < SitePrism::Section
        element :logo, 'header  .logo'
        element :input_search, '#autoComplete'
        element :btn_search, '#menuSearch'
        element :btn_close_search, '[data-ng-click="closeSearchForce()"]'
        element :btn_menu_user, '#menuUserLink'
        element :menu_user, '#loginMiniTitle'
        element :logged_in_username, '#menuUserLink .hi-user'
        element :btn_logged_in_my_account, '#loginMiniTitle [translate="My_account"]'
        element :btn_logged_in_my_orders, '#loginMiniTitle [translate="My_Orders"]'
        element :btn_logged_in_sign_out, '#loginMiniTitle [translate="Sign_out"]'
        element :btn_cart, '#shoppingCartLink'
        element :tool_tip_cart, '#toolTipCart'
        elements :tool_tip_cart_product_name, '#toolTipCart h3'
        elements :tool_tip_cart_btn_remove, '#toolTipCart .removeProduct'
        element :tool_tip_cart_btn_checkout, '#checkOutPopUp'
        element :quantity_last_product_add_in_cart, '.ng-scope .lastProduct'
    end
end
