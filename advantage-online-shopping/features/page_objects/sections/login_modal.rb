module Sections
    class LoginModal < SitePrism::Section
        element :btn_close_modal, '.closeBtn'
        element :btn_login_facebook, '.facebook'
        element :input_username, '[name="username"]'
        element :label_username, '[sec-name="username"] label'
        element :input_password, '[name="password"]'
        element :label_password, '[sec-name="password"] label'
        element :btn_sign_in, '#sign_in_btn'
        element :btn_forgot_password, '.forgot-Passwowd'
        element :btn_create_account, '.create-new-account'
        element :checkbox_remember_me, '[name="remember_me"]'
        element :login_error_msg, '#signInResultMessage'
        
        def login(username, password)
            input_username.set username
            input_password.set password
            btn_sign_in.click
        end
    end
end
