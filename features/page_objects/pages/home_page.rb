require_relative '../sections/header'
require_relative '../sections/footer'
module Pages
    class HomePage < SitePrism::Page
        set_url '/'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :loader, 'body > .loader'

        def search_for(product)
            header.btn_search.click
            header.input_search.set product
            wait_until_loader_visible
            wait_until_loader_invisible
            header.btn_search.click
        end
    end
end
