require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class LoginPage < SitePrism::Page
        set_url '/login'

        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        element :btn_registration, '#registration_btn'
        element :input_login_name, '[name="usernameInOrderPayment"]'
        element :input_login_password, '[name="passwordInOrderPayment"]'
    end
end
