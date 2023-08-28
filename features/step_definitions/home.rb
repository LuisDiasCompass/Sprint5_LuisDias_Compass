Dado('que esteja na página inicial do e-commerce') do
    @home = Pages::HomePage.new
    @home.load
end

Então('o logotipo, o header e as categorias de produtos são exibidos corretamente') do
    expect(@home).to have_header
    expect(@home).to have_footer
    expect(@home.category.all_there?).to be_truthy
end

Quando('realizar a pesquisa de um produto válido') do
    valid_product = Factory::Static.static_data('valid_product')
    @home.search_for(valid_product)
    @search_results = Pages::SearchResult.new
end
  
Então('deve ver uma lista de resultados') do
    expect(@search_results).to have_products
end

Então('deve ver o nome, imagem e preço dos itens') do
    @search_results.products.each do |element|
        expect(element.all_there?).to be_truthy
    end
end

Quando('clica no botão {string} da seção FOLLOW US') do |btn|
    @home.wait_loader
    @home.footer.click_btn_follow_us(btn.to_sym)
    popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(popup)
end
  
Então('é redirecionado para página correta {string}') do |redirect_page|
    expect(page.driver.current_url).to include(redirect_page)
end
