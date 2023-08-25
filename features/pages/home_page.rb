require 'capybara/dsl'

class HomePage
    include Capybara::DSL 

    def load
        visit('https://advantageonlineshopping.com/#/')
    end
end
