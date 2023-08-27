Dado('que acessa a página de um produto') do
    @home = Pages::HomePage.new
    @home.load
    @home.search_for('speakers')
    @search_results = Pages::SearchResult.new
    @home.header.btn_close_search.click
    @search_results.access_product_of_list(0)
    @product = Pages::ProductPage.new
end
  
Então('a página do produto é exibida corretamente') do
    expect(@product).to have_product_img
    expect(@product).to have_product_description
end

Quando('clica em uma opção de cor') do
    @product.set_color_of_list(1)
end
  
Então('a cor é marcada como selecionada') do
    expect(@product.set_color[1]['class']).to include('colorSelected')
end

Quando('valor quantidade é {string} e clica no botão {string}') do |string, string2|
    @product.input_quantity.set(string)
    eval('@product.' + string2 + '.click')
end

Quando('insere no campo quantidade {string}') do |string|
    @product.input_quantity.set(string)
end

Então('o campo quantidade tem seu valor alterado para {string}') do |string|
  expect(@product.input_quantity.value).to eq(string)
end

Quando('seleciona uma quantidade e adiciona ao carrinho') do
    @product.input_quantity.set(5)
    @product.btn_add_to_cart.click
end
  
Então('o item é adicionado corretamente') do
    expect(@product.product_in_cart.text).to include(@product.product_name.text.slice(0..20))
    expect(@product.quantity_in_cart[0].text).to include('5')
end
  
Quando('clica no botão da categoria') do
    @product.btn_category.click
end
  
Então('é redirecionado para página da categoria do produto') do
    expect(page.driver.current_url).to include('category')
end
  
Quando('clica no botão HOME') do
    @product.btn_home.click
end
  
Então('é redirecionado para home page') do
    expect(page.driver.current_url).to eq(URL + '/#/')
end
