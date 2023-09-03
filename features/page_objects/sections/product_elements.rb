module Sections

    # Mapeamentos dos atributos de cada produto de uma lista de produtos
    class ProductElements < SitePrism::Section

        # Atributos do produto
        element :product_img, '.imgProduct'
        element :product_name, '.productName'
        element :product_price, '.productPrice'
    end
end
