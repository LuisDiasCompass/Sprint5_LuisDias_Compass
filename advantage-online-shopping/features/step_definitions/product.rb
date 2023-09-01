Dado('que esteja na página de um produto') do
        steps %{
            Dado que esteja na página inicial do e-commerce
            Quando realizar a pesquisa de um produto válido
            E acessar a página do produto
        }
end

Quando('acessar a página do produto') do
    @search_results.access_product_of_list(0)
    @product = Pages::ProductPage.new
end
  
Então('a página do produto é exibida corretamente') do
    expect(@product.product_img.visible?).to be_truthy
    expect(@product.product_description.visible?).to be_truthy
end

Quando('selecionar uma cor') do
    @product.select_color_list.last.click
end
  
Então('a cor é marcada como selecionada') do
    expect(@product.select_color_list.last['class']).to include('colorSelected')
end

Dado('o campo quantidade tem o valor {string}') do |quantity|
    @product.input_quantity.set(quantity)
end

Quando('muda a quantidade {string}') do |event|
    @product.set_quantity_by_button(event)
end

Quando('insere uma quantidade {string}') do |quantity|
    @product.input_quantity.set(quantity)
end

Então('o campo quantidade tem seu valor alterado {string}') do |value|
  expect(@product.input_quantity.value).to eq(value)
end

Quando('adiciona uma quantidade do item no carrinho') do
    @product.input_quantity.set(5)
    @product.btn_add_to_cart.click
end
  
Então('o item é adicionado corretamente') do
    expect(@home.header.product_name_in_cart.last.text).to include(@product.product_name.text.slice(0..20))
    expect(@home.header.quantity_last_product_add_in_cart.text).to include('5')
end
  
Quando('volta para página de categorias') do
    @product.btn_category.click
end
  
Então('é redirecionado para página da categoria do produto') do
    expect(page.driver.current_url).to include('category')
end
  
Quando('retorna para home') do
    @product.btn_home.click
end
