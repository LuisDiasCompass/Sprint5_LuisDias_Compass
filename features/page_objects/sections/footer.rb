module Sections
    class Footer < SitePrism::Section
        element :facebook, '[name = follow_facebook]'
        element :twitter, '[name = follow_twitter]'
        element :linkedin, '[name = follow_linkedin]'
    end
end