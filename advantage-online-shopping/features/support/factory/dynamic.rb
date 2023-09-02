require 'faker'

module Factory
    class Dynamic
        def self.valid_data_form_contact_us
            {
                email: Faker::Internet.email,
                message: Faker::Lorem.paragraph(sentence_count: 10)
            }
        end
    end
end
