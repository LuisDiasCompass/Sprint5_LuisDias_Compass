Dado('que acessa a página inicial do e-commerce') do
    @home = HomePage.new
    @home.load
end

Então('o logotipo, o header e as categorias de produtos são exibidos corretamente') do
    expect(@home).to have_logo
end
