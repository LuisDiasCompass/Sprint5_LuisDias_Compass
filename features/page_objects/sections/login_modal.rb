module Sections

    # Mapeamento do modal de login
    class LoginModal < SitePrism::Section
        
        # Inputs de usuário e senha
        element :input_username, '[name="username"]'
        element :input_password, '[name="password"]'

        # Elementos clicáveis
        element :btn_close_modal, '.closeBtn'
        element :btn_login_facebook, '.facebook'
        element :btn_sign_in, '#sign_in_btn'
        element :btn_forgot_password, '.forgot-Passwowd'
        element :btn_create_account, '.create-new-account'
        element :checkbox_remember_me, '[name="remember_me"]'

        # Elementos que exibem informações sobre o login
        element :login_error_msg, '#signInResultMessage'
        element :label_username, '[sec-name="username"] label'
        element :label_password, '[sec-name="password"] label'
        
        # Função que recebe nome de usuário e senha 
        # e tenta realizar o login
        def login username, password
            input_username.set username
            input_password.set password
            btn_sign_in.click
        end
    end
end
