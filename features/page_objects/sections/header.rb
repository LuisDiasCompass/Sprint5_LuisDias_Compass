module Sections
    class Header < SitePrism::Section
        element :logo, 'header  .logo'
        element :input_search, '#autoComplete'
        element :btn_search, '#menuSearch'
    end
end
