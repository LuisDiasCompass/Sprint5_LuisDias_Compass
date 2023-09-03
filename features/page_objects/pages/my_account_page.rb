require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class MyAccountPage < SitePrism::Page
        set_url '/myAccount'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :my_account_title, 'h3[translate="MY_ACCOUNT"]'
    end
end
