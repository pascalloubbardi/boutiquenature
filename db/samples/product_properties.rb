products =
  { 
    "Articulations Infusion AB" => 
    { 
      "Laboratoir" => "Biover",
      "Origine" => "Biologique",
      "Forme" => "Infusion",
      "Gamme" => "Nutrithérapie"
    },
    "Bain Aromatique Sport 100ml BIO" =>
    {
      "Laboratoir" => "Biover",
      "Origine" => "Biologique",
      "Forme" => "Huile",
      "Gamme" => "Huile Essentielle"
    },
    
    "Calcium Marin 100 gélules" =>
    {
      "Laboratoir" => "Biotechnie",
      "Origine" => "Biologique",
      "Forme" => "Gélule",
      "Gamme" => "Nutrithérapie"
    },
    "Calcium Marin 40 gélules" =>
    {
      "Laboratoir" => "Biotechnie",
      "Origine" => "Biologique",
      "Forme" => "Gélule",
      "Gamme" => "Nutrithérapie"
    },
    "Curcuma Articulations 60 comprimés" =>
    {
      "Laboratoir" => "Biotechnie",
      "Origine" => "Biologique",
      "Forme" => "Comprimé",
      "Gamme" => "Nutrithérapie"
    },
    "Curcuma Extrait Fluide 300 ml AB" =>
    {
      "Laboratoir" => "Biotechnie",
      "Origine" => "Biologique",
      "Forme" => "Solution",
      "Gamme" => "Pleine Nature"
    },
    "Extrait de Plante Fraiche Cassis 50ml AB" =>
    {
      "Laboratoir" => "Biover",
      "Origine" => "Biologique",
      "Forme" => "Solution",
      "Gamme" => "Pleine Nature"
    },
}

products.each do |name, properties|
  product = Spree::Product.find_by_name(name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end
