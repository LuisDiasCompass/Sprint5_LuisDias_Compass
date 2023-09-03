require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class ShoppingCartPage < SitePrism::Page
        set_url '/shoppingCart'

        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :shopping_cart_empty_container, '#shoppingCart .bigEmptyCart'
        elements :products_in_cart, '#shoppingCart [ng-repeat="product in cart.productsInCart track by $index"]'
        elements :btn_edit_product, '.edit'
        elements :btn_remove_product, '.remove'
        elements :product_name_label, '.productName'
        element :btn_checkout, '#checkOutButton'

        def remove_product_by_index(index)
            btn_remove_product[index].click
        end

        def edit_product_by_index(index)
            btn_edit_product[index].click
        end

        def return_product_name_by_index(index)
            product_name_label[index].text
        end
    end
end
