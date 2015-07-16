Spree::Sample.load_sample("products")
Spree::Sample.load_sample("variants")

products = {}
products[:articulations_infusion_ab] = Spree::Product.find_by_name!("Articulations Infusion AB") 
products[:bain_aromatique_sport] = Spree::Product.find_by_name!("Bain Aromatique Sport 100ml BIO")
products[:calcium_marin_100] = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
products[:calcium_marin_40] = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
products[:curcuma_articulations_60] = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
products[:curcuma_extrait_fluide_300] = Spree::Product.find_by_name!("Curcuma Extrait Fluide 300 ml AB")
products[:extrait_de_plante_fraiche_cassis_50ml] = Spree::Product.find_by_name!("Extrait de Plante Fraiche Cassis 50ml AB")
products[:calcium_forte_75_comp] = Spree::Product.find_by_name!("Calcium forte 75 comp")
products[:peau_cheveux_ongles_45_cap] = Spree::Product.find_by_name!("Peau cheveux & ongles 45 cap")


def image(name, type="jpeg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:articulations_infusion_ab].master => [
    {
      :attachment => image("ArticulationAB")
    }
  ],
  products[:bain_aromatique_sport].master => [
    {
      :attachment => image("BASportBIO")
    }
  ],
   products[:calcium_marin_100].master => [
    {
      :attachment => image("CalciumMarin100gel")
    }
  ],
   products[:calcium_marin_40].master => [
    {
      :attachment => image("CalciumMarin40gel")
    }
  ],
   products[:curcuma_articulations_60].master => [
    {
      :attachment => image("CurcumaArticulationsAB")
    }
  ],
   products[:curcuma_extrait_fluide_300].master => [
    {
      :attachment => image("CurcumaExtraitFluideAB")
    }
  ],
  products[:extrait_de_plante_fraiche_cassis_50ml].master => [
    {
      :attachment => image("EPFCassisAB")
    }
  ],
    products[:calcium_forte_75_comp].master => [
    {
      :attachment => image("calcium-forte-tab_171079")
    }
  ],
  products[:peau_cheveux_ongles_45_cap].master => [
    {
      :attachment => image("calcium-forte-tab_171079")
    }
  ],

}



products[:calcium_marin_100].variants.each do |variant|
  
end

images.each do |variant, attachments|
  puts "Loading images for #{variant.product.name}"
  attachments.each do |attachment|
  variant.images.create!(attachment)
  end
end
