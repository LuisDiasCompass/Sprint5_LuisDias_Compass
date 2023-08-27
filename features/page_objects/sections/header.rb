module Sections
    class Header < SitePrism::Section
        element :logo, 'header  .logo'
        element :input_search, '#autoComplete'
        element :btn_search, '#menuSearch'
        element :btn_close_search, '[data-ng-click="closeSearchForce()"]'
    end
end
