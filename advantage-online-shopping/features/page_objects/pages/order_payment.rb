require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class OrderPaymentPage < SitePrism::Page
        set_url '/orderPayment'

        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'

        element :user_order, '#userCart'
        element :shipping_and_payment_details, '[paramstopass="resolveParams"]'
    end
end