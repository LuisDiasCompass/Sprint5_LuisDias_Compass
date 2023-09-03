require 'faker'

module Factory
    class Dynamic
        def self.valid_data_form_contact_us
            {
                email: Faker::Internet.email,
                message: Faker::Lorem.paragraph(sentence_count: 10)
            }
        end

        def self.valid_product_quantity
            {
                quantity: Faker::Number.between(from: 1, to: 10)
            }
        end

        def self.valid_data_form_credit_card
            {
                cardholder_name: Faker::Name.name,
                card_number: Faker::Number.number(digits: 13),
                card_cvv: Faker::Number.number(digits: 4)
            }
        end
    end
end
