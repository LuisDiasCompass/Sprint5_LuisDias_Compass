require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/our_products'
module Pages
    class HomePage < SitePrism::Page
        set_url '/'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        section :category, Sections::OurProducts, '#our_products'
        elements :btn_slider_steps, '.slider-steps .ng-scope'
        element :loader, 'body > .loader'
        

        def search_for(product)
            header.btn_search.click
            header.input_search.set product
            wait_loader
            header.btn_search.click
            header.btn_close_search.click
        end

        def wait_loader
            wait_until_loader_visible
            wait_until_loader_invisible
        end
    end
end
