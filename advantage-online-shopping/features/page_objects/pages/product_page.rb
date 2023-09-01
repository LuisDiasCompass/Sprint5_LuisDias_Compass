require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class ProductPage < SitePrism::Page
        set_url '/product'

        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        elements :select_color_list, '.colors #rabbit'
        element :product_img, '#mainImg'
        element :product_description, '#Description'
        element :product_name, '#Description h1'
        element :btn_minus, '.minus'
        element :btn_plus, '.plus'
        element :input_quantity, '[name="quantity"]'
        element :btn_add_to_cart, '[name="save_to_cart"]'
        element :btn_category, '.pages [ng-click*="category"]'

        def set_quantity_by_button(button)
            case button
            when 'aumentar_quantidade'
                btn_plus.click
            when 'diminuir_quantidade'
                btn_minus.click
            end
        end
    end
end
