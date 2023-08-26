Dado('com o campo de pesquisa aberto') do
    @home = Pages::HomePage.new
    @home.load
end
  
Quando('o digitar o nome de um produto na área de pesquisa') do
    @home.search_for('speakers')
    @search_results = Pages::SearchResult.new
end
  
Então('deve ver uma lista de resultados') do
    expect(@search_results).to have_products
end