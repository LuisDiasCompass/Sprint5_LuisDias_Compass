module Sections

    # Mapeamento da seção Contact Us da home page
    class ContactUs < SitePrism::Section

        # Link para abertura do chat
        element :btn_chat, '#chatLogo'

        # Elementos do formulário de contato
        elements :select_category_list, '[name="categoryListboxContactUs"] option[label]:not([label="Select Category"])'
        elements :select_products_list, '[name="productListboxContactUs"] option[label]'
        element :input_email, '[name="emailContactUs"]'
        element :text_area, '[name="subjectTextareaContactUs"]'
        element :btn_send, '#send_btn'

        # Label de confirmação de envio
        element :send_confirme_label, '.successMessage'
    end
end
