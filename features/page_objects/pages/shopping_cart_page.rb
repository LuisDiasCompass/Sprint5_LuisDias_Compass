require_relative '../sections/header'
require_relative '../sections/footer'

module Pages

    # Mapeamento da página do carrinho
    class ShoppingCartPage < SitePrism::Page
        set_url '/shoppingCart'

        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Container exibido quando o carrinho está vazio
        element :shopping_cart_empty_container, '#shoppingCart .bigEmptyCart'

        # Lista dos produtos no carrinho
        elements :products_in_cart, '#shoppingCart [ng-repeat="product in cart.productsInCart track by $index"]'

        # Elementos referentes a cada produto
        elements :product_name_label, '.productName'
        elements :btn_edit_product, '.edit'
        elements :btn_remove_product, '.remove'
        
        # Link para checkout
        element :btn_checkout, '#checkOutButton'

        # Função que recebe o index de um elemento a lista de produtos
        # e o remove da lista
        def remove_product_by_index index
            btn_remove_product[index].click
        end

        # Função que recebe o index de um elemento a lista de produtos
        # e realiza o redirecionamento para página do produto
        def edit_product_by_index index
            btn_edit_product[index].click
        end
        
        # Função que recebe o index de um elemento a lista de produtos
        # e retorna o seu nome em forma de string
        def return_product_name_by_index index
            product_name_label[index].text
        end
    end
end
