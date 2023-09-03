require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class RegisterPage < SitePrism::Page
        set_url '/register'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :form_title, '#registerPage [translate="CREATE_ACCOUNT"]'
    end
end
