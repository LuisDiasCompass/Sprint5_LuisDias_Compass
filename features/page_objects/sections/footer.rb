module Sections
    class Footer < SitePrism::Section
        element :btn_facebook, '[name = follow_facebook]'
        element :btn_twitter, '[name = follow_twitter]'
        element :btn_linkedin, '[name = follow_linkedin]'

        def click_btn_follow_us(button)
            self.public_send(button).click
        end
    end
end
