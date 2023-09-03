require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página do produto
    class ProductPage < SitePrism::Page
        set_url '/product'

        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Configurar opções do produto
        elements :select_color_list, '.colors #rabbit'
        element :btn_minus, '.minus'
        element :btn_plus, '.plus'
        element :input_quantity, '[name="quantity"]'

        # Elementos da descrição
        element :product_img, '#mainImg'
        element :product_description, '#Description'
        element :product_name, '#Description h1'

        # Adicionar ao carrinho
        element :btn_add_to_cart, '[name="save_to_cart"]'

        # Retornar para página da categoria do produto
        element :btn_category, '.pages [ng-click*="category"]'

        # Realiza o click para configurar uma quantidade do produto
        def set_quantity_by_button button
            case button
            when 'aumentar_quantidade'
                btn_plus.click
            when 'diminuir_quantidade'
                btn_minus.click
            end
        end
    end
end
