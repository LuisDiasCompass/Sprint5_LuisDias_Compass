module Sections

    # Mapeamento do footer
    class Footer < SitePrism::Section

        # Links Follow Us
        element :btn_facebook, '[name = follow_facebook]'
        element :btn_twitter, '[name = follow_twitter]'
        element :btn_linkedin, '[name = follow_linkedin]'
    end
end
