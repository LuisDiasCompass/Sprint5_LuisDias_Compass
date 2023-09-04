<div align="center"><img src="https://media.licdn.com/dms/image/C4D16AQElB0y1d5svPg/profile-displaybackgroundimage-shrink_200_800/0/1658867832742?e=2147483647&v=beta&t=i56I1rSG-TTCSP6hZbam6Wo9gwZINgRKqeXGKuCwP0w" tittle="compass.uol"></div>

# Automação de testes Web - Estágio QA Compass.UOL

Este é um projeto de automação do site Advantage Online Shopping desenvolvido durante a Sprint 5 - Automação Web com Ruby e Cucumber do programa de bolsas da empresa Compass.UOL. 

A proposta foi elaborar um mapa mental do site, utilizá-lo como base para criar cenários de testes utilizando a linguagem Gherkin e automatizá-los utilizando a linguagem de programação Ruby juntamente com alguns recursos como Cucumber, Capybara, SitePrism e Selenium. Foram utilizados também massa de dados estática, dinâmica (Faker) e geração de reports automatizados com o Cucumber.

## Mapa do site Advantage Online Shopping

Você pode encontrar o arquivo do mapa [clicando aqui](/mapa-mental)

![Advantage Online Shopping Map](/mapa-mental/advantage-online-shopping.png)

## Preparando o ambiente para execução dos testes

1. Certifique-se de ter o Ruby instalado em seu sistema. Se não tiver, você pode baixá-lo e instalá-lo a partir do site oficial: [Ruby Lang](https://www.ruby-lang.org/). Os testes foram desenvolvidos na versão 2.5.3, caso você utilize outra versão poderão ocorrer erros inesperados.

2. Crie uma pasta onde você colocará os arquivos e abra um terminal do Git Bash a partir dela. Para isso você também precisa ter o [Git](https://git-scm.com/) instalado em seu computador.

3. Digite estes comandos no terminal para clonar os arquivos:
   ```
   git clone https://github.com/LuisDiasCompass/Sprint5_LuisDias_Compass.git

   ```

   Você também pode baixar o [arquivo zip](https://github.com/LuisDiasCompass/Sprint5_LuisDias_Compass/archive/refs/heads/main.zip) e descompactar na sua pasta.

4. Abra o terminal de comando do seu computador na pasta "Sprint5_LuisDias_Compass" e digite o comando abaixo para instalar as gems necessárias:

   ```
   bundle install

   ```

5. O navegador Google Chrome também é necessário, assim como o ChromeDriver da versão compatível com seu navegador que pode ser baixada [neste link](https://chromedriver.chromium.org/downloads) 

## Execução
### Observações

* Para alguns testes você precisará cadastrar um usuário no site Advantage Online Shopping [clicando neste link](https://advantageonlineshopping.com/#/register).

* Após estar com usuário e senha válidos deverá configura-los no arquivo prd.yml que está no caminho '/features/support/factory/static/prd.yml'.

* Dentro do arquivo encontre:
```
valid_user_data:
  username: 'SEU USUARIO'
  password: 'SUA SENHA'
```
* Substitua os valores dentro das aspas por seu usuário e sua senha.

* Caso os testes sejam executados muitas vezes seguidas o usuário poderá ser bloqueado temporariamente. Caso isso aconteça você pode criar uma nova conta ou aguardar o desbloqueio.

Há algumas formas de executar os testes:

### Todos de uma vez

* Você pode executar todos os testes de uma única vez com o comando a seguir:

   ```
   cucumber -p default

   ```
* Também é possível executar os testes sem abrir a interface gráfica do navegador adicionando o argumento headless:

   ```
   cucumber -p default -p headless

   ```

### Por funcionalidade

* Pode-se executar testes em cada funcionalidade separadamente adicionando a tag referente a ela:

   ```
   cucumber -p default -t@home

   ```
* As funcionalidades com testes são:
    - @home ----------- Home Page
    - @product --------- Product Page
    - @user ------------- User
    - @shopping_cart -- Shopping Cart
    - @checkout -------- Checkout

### Por cenário

* Também é possível executar cada cenário de teste exclusivamente com as tags abaixo:
    #### HOME PAGE
    - @home_page_load ------------ Carregamento da página
    - @search_valid_product -------- Realizar pesquisa de um produto válido
    - @search_invalid_product ------ Realizar pesquisa de um produto inválido
    - @access_product_categories -- Acessar as categorias de produtos
    - @explorer_now_images --------Validar carrossel de imagens da seção EXPLORER NOW
    - @redirect_to_chat -------------- Validar redirecionamento para o chat
    - @contact_us_form --------------Validar fomulário da seção CONTACT US
    - @follow_us ----------------------Links da seção FOLLOW US

    #### PRODUCT PAGE
    - @product_page_load ----- Carregamento da página
    - @product_color_select ---- Selecionar a cor do produto
    - @select_quantity_valid ---- Validar valores limite da seleção de quantidade
    - @input_quantity_valid -----Validar valores limite da seleção de quantidade digitando no campo
    - @add_to_cart -------------- Adicionar ao carrinho
    - @shopping_cart_tool_tip -- Validar acesso as funções do carrinho no menu superior
    - @return_to_category ------ Retornar para categoria do produto

    #### USER
    - @login_modal -------------- Validar a abertura do modal de login
    - @valid_login ---------------- Login convencional válido
    - @invalid_login -------------- Login convencional inválido
    - @empty_data_login ---------Login com campos vazios
    - @redirect_to_register ------- Redirecionamento para página de cadastro
    - @logout --------------------- Logout
    - @redirect_to_my_account -- Acesso ao My Account
    - @redirect_to_my_orders ---- Acesso ao My Orders

    #### SHOPPING CART
    - @edit_item ------------------------- Editar item do carrinho
    - @remove_item --------------------- Remover item do carrinho
    - @checkout_user_not_logged_in --- Checkout de usuário não logado no sistema
    - @logged_user_checkout ----------- Checkout de usuário logado no sistema

    #### CHECKOUT
    - @checkout_with_valid_card -------Finalizar compra com cartão de crédito válido
    - @checkout_with_valid_safepay --- Finalizar compra com SafePay

## Relatório de execução
 * Após a execução dos testes o relatório se encontrará na pasta 'reports' com o nome de 'report.html'.
 * Você pode ver um relatório de execução dos testes na pasta. [Click aqui](/reports), baixe o arquivo 'report.htm' e abra no seu navegador.

## Referências
   
### Documentação Cucumber
   * https://cucumber.io/docs/cucumber/

### Documentação Selenium
   * https://www.selenium.dev/pt-br/documentation/webdriver/

### Documentação Capybara
   * https://rubydoc.info/github/teamcapybara/capybara/master

### Documentação SitePrism
   * https://github.com/site-prism/site_prism

### Documentação Faker 
   * https://github.com/faker-ruby/faker

## Conteúdo do Repositório

Este repositório contém códigos, exercícios e informações relacionados ao meu estágio no Studio Quality & Test Automation da Compass.UOL. Fique à vontade para utilizar e me enviar mensagem para dúvidas, feedbacks ou sugestões.

## Contato
### Luís Eduardo Dias, [Enviar e-mail](mailto:luis.dias.pb@compasso.com.br).
