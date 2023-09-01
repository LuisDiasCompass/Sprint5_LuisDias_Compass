Dado('que adiciona um item no carrinho e acessa a página do carrinho') do
    steps %{
        Dado que esteja na página de um produto
        Quando adiciona uma quantidade do item no carrinho
    }
    @product.header.btn_cart.click
    @shopping_cart = Pages::ShoppingCartPage.new
  end
  
  Quando('realiza a ação para editar um item do carrinho') do
    @product_name = @shopping_cart.return_product_name_by_index(0)
    @shopping_cart.edit_product_by_index(0)
  end
  
  Então('é redirecionado para página do produto') do
    @product.wait_until_product_description_visible
    expect(@product.product_name.text).to include(@product_name)
  end
  
  Quando('realiza a ação para remover um item do carrinho') do
    @shopping_cart.remove_product_by_index(0)
  end
  
  Então('o item é removido') do
    expect(@shopping_cart.products_in_cart.empty?).to be_truthy
  end
  
  Então('uma tela de carrinho vazio é exibida') do
    expect(@shopping_cart.shopping_cart_empty_container.visible?).to be_truthy
  end
  
  Quando('realiza o Checkout') do
    @shopping_cart.btn_checkout.click
  end
  
  Então('é redirecionado para página de login') do
    @login_page = Pages::LoginPage.new
    expect(@login_page.all_there?).to be_truthy
    expect(page.current_url).to include('/login')
  end

  Dado('que esteja logado no sitema') do
    steps %{
        Quando o menu USER está aberto
        E realiza o login com usuário válido
    }
  end
  
  Então('é redirecionado para página de pagamento') do
    @order_payment = Pages::OrderPaymentPage.new
    expect(@order_payment.all_there?).to be_truthy
    expect(page.current_url).to include('/orderPayment')
  end
  