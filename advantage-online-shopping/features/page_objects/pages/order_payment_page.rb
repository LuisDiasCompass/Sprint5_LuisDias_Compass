require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class OrderPaymentPage < SitePrism::Page
        set_url '/orderPayment'

        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        element :user_order, '#userCart'

        element :shipping_details_btn_next, '[data-ng-click="shippingDetails_next()"]'
        element :shipping_and_payment_details, '[paramstopass="resolveParams"]'
        element :shipping_details_edit_form, '#userDetailsEditMode'
        element :shipping_details_edit_btn_next, '#userDetailsEditMode #next_btn'
        element :shipping_details_edit_btn_back, '#userDetailsEditMode [data-ng-click="backToMainShippingDetails()"]'

        element :check_radio_safepay_payment, '[data-ng-click="imgRadioButtonClicked(1); checkedRadio = 1"]'
        element :safepay_input_username, '[name="safepay_username"]'
        element :safepay_input_password, '[name="safepay_password"]'
        element :safepay_save_checkbox, '[name="save_safepay"]'
        element :safepay_btn_pay_now,   '#pay_now_btn_SAFEPAY'

        element :check_radio_mastercredit_payment, '[data-ng-click="imgRadioButton = 2; checkedRadio = 2"]'
        element :saved_card, '[ng-show="imgRadioButton == 2 && !noCards && !showMasterCart"]'
        element :saved_card_btn_edit, '[ng-show="imgRadioButton == 2 && !noCards && !showMasterCart"] .edit'
        element :mastercredit_input_card_number, '[name="card_number"]'
        element :mastercredit_input_cvv_number, '[name="cvv_number"]'
        elements :mastercredit_select_expiration_month, '[name="mmListbox"] [label]'
        elements :mastercredit_select_expiration_year, '[name="yyyyListbox"] [label]'
        element :mastercredit_input_card_holdername, '[name="cardholder_name"]'
        element :mastercredit_save_checkbox, '[name="save_master_credit"]'
        element :mastercredit_btn_pay_now, '#pay_now_btn_ManualPayment'

        element :order_payment_success, '#orderPaymentSuccess'
    end
end