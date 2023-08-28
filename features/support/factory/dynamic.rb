require 'faker'

module Factory
    class Dynamic
        def self.user
            {
                email: Faker::Internet.email,
                message: Faker::Lorem.unique
            }
        end
    end
end
