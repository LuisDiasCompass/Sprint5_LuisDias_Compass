require_relative 'product_elements'

module Sections

    # Mapeamento de produtos da lista
    class ProductsList < SitePrism::Section

        # Lista de produtos mapeados
        sections :products, ProductElements, 'li'
        
        # Recebe o index de um produto da lista e acessa a página do produto
        def access_product_of_list index
            products[index].product_img.click
        end
    end
end
