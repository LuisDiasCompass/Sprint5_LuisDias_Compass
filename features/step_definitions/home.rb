Dado('que acessa a página inicial do e-commerce') do
    @home = Pages::HomePage.new
    @home.load
end

Então('o logotipo, o header e as categorias de produtos são exibidos corretamente') do
    expect(@home).to have_header
    expect(@home).to have_footer
    expect(@home.category.all_there?).to be_truthy
end

Quando('o digitar o nome de um produto na área de pesquisa') do
    @home.search_for('speakers')
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

Quando('clica no botão {string}') do |string|
    @home.wait_loader
    eval('@home.footer.' + string + '.click')
    popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(popup)
end
  
Então('é redirecionado para página correta {string}') do |string|
    expect(page.driver.current_url).to include(string)
end
