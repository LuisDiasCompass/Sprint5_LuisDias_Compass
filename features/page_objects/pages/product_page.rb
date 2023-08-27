module Pages
    class ProductPage < SitePrism::Page
        set_url '/product'

        elements :set_color, '.productColor'
        element :product_in_cart, '#product h3'
        elements :quantity_in_cart, '#product label'
        element :product_img, '#mainImg'
        element :product_description, '#Description'
        element :product_name, '#Description h1'
        element :btn_minus, '.minus'
        element :btn_plus, '.plus'
        element :input_quantity, '[name="quantity"]'
        element :btn_add_to_cart, '[name="save_to_cart"]'
        element :btn_home, '.pages [translate="HOME"]'
        element :btn_category, '.pages [ng-click*="category"]'
        
        def set_color_of_list(index)
            set_color[index].click
        end
    end
end
