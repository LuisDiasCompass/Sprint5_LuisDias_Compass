require_relative '../sections/product_elements'

module Pages
    class SearchResult < SitePrism::Page
        set_url '/search'

        sections :products, Sections::ProductElements, 'div.categoryRight li.ng-scope'
        
        def access_product_of_list(index)
            products[index].product_img.click
        end
    end
end
