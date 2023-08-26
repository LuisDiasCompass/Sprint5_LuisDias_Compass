Dado('que acessa a página inicial do e-commerce') do
    @home = Pages::HomePage.new
    @home.load
end

Então('o logotipo, o header e as categorias de produtos são exibidos corretamente') do
    expect(@home.header).to have_logo
end

Quando('clica no {string}') do |string|
    eval('@home.footer.' + string + '.click')
    popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(popup)
end
  
Então('{string}') do |string|
    expect(page.driver.current_url).to include(string)
end
