Dado('que esteja na página inicial do e-commerce') do
    @home = Pages::HomePage.new
    @home.load
end

Então('a home page é exibida corretamente') do
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

Então('deve ver a descrição dos itens') do
    @search_results.products.each do |element|
        expect(element.all_there?).to be_truthy
    end
end

Quando('selecionar uma imagem') do
    @home.btn_slider_steps.last.click
end
    
Então('a imagem é marcada como selecionada') do
    expect(@home.btn_slider_steps.last['class']).to include('selected')
end

Quando('acessa a rede social {string} da seção FOLLOW US') do |link|
    follow_us = Factory::Static.static_data_two_args('footer_follow_us', link)
    @home.footer.public_send(follow_us.to_sym).click
    popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(popup)
end
  
Então('é redirecionado para página correta {string}') do |page_url|
    follow_us = Factory::Static.static_data_two_args('footer_follow_us', page_url)
    expect(page.driver.current_url).to include(follow_us)
end
