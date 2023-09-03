module Sections

    # Mapeamento da seção de categorias de produtos
    class OurProducts < SitePrism::Section

        # Links para as categorias
        element :speakers, '#our_products [aria-label="SpeakersCategory"]'
        element :tablets, '#our_products [aria-label="TabletsCategory"]'
        element :laptops, '#our_products [aria-label="LaptopsCategory"]'
        element :mice, '#our_products [aria-label="MiceCategory"]'
        element :headphones, '#our_products [aria-label="HeadphonesCategory"]'
    end
end
