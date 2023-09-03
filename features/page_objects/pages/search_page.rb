require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/products_list'

module Pages

    # Mapeamento da página de resultados de busca
    class SearchPage < SitePrism::Page

        # Header e Footer
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        # Container da lista de produtos
        section :products_list, Sections::ProductsList, '.categoryRight ul'

        # Label exibido quando não são encontrados resultados
        element :no_results_label, '.noProducts'
    end
end
