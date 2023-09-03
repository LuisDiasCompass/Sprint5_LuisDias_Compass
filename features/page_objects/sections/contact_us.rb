module Sections
    class ContactUs < SitePrism::Section
        element :btn_chat, '#chatLogo'
        element :btn_send, '#send_btn'
        element :input_email, '[name="emailContactUs"]'
        element :text_area, '[name="subjectTextareaContactUs"]'
        element :send_confirme_label, '.successMessage'
        elements :select_category_list, '[name="categoryListboxContactUs"] option[label]:not([label="Select Category"])'
        elements :select_products_list, '[name="productListboxContactUs"] option[label]'
    end
end
