require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/login_modal'

module Pages
    class RegisterPage < SitePrism::Page
        set_url '/register'
        
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        section :login_modal, Sections::LoginModal, 'login-modal .PopUp'
        element :form_title, '#registerPage .fixed'
    end
end
