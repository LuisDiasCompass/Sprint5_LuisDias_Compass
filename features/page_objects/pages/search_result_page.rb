module Pages
    class SearchResult < SitePrism::Page
        set_url '/search'

        elements :products, 'div.categoryRight li.ng-scope'
    end
end