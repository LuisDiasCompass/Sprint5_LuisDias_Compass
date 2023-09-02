Dado('que realiza o checkout de compra válida') do
    steps %{
        Dado que adiciona um item no carrinho e acessa a página do carrinho
        E que esteja logado no sistema
        Quando realiza o Checkout
    }
    @order_payment_page = Pages::OrderPaymentPage.new
end
  
Dado('está na seção de seleção de pagamento') do
    @order_payment_page.shipping_details_btn_next.click
end
  
Quando('seleciona a opção cartão de credito') do
    @order_payment_page.check_radio_mastercredit_payment.click
end
  
Quando('realiza o pagamento com dados válidos') do
    valid_card_data = Factory::Dynamic.valid_data_form_credit_card
    if @order_payment_page.saved_card.visible?
        @order_payment_page.saved_card_btn_edit.click
    end
    @order_payment_page.mastercredit_input_card_number.set valid_card_data[:card_number]
    @order_payment_page.mastercredit_input_cvv_number.set valid_card_data[:card_cvv]
    @order_payment_page.mastercredit_input_card_holdername.set valid_card_data[:cardholder_name]
    @order_payment_page.mastercredit_select_expiration_month.last.click
    @order_payment_page.mastercredit_select_expiration_year.last.click
    @order_payment_page.mastercredit_btn_pay_now.click
end
  
Então('a compra é realizada com sucesso') do
    expect(@order_payment_page.order_payment_success.visible?).to be_truthy
end
