Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

complementalimentaire = Spree::TaxCategory.find_by_name!("Complement Alimentaire")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  #description: FFaker::Lorem.paragraph,
  available_on: Time.zone.now
}

products = [
  {
    :name => "Articulations Infusion AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => '

<p>Nos articulations se &#34; rouillent &#34; inévitablement avec l&acute;&acirc;ge. Nous devons par cons&eacute;quent faire face &agrave; divers inconv&eacute;nients comme la raideur des muscles et des articulations, des genoux qui craquent, mains sensibles aux changements climatiques ... Les infusettes Biover à base d&acute;ortie, de saule et de cassis soulagent les gênes articulaires tout en stimulant l&acute;&eacute;limination des toxines.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Verser de l&acute;eau bouillante sur le sachet d&acute;herbes et laisser infuser pendant 3 à 5 minutes. Consommer 3 à 4 tasses par jour.<br>Ingrédients: ortie* (42%), cassis* (25%), saule* (21%), menthe poivr&eacute;e*, mauve*.<br>Boite de 20 sachets 36 g.<br>* culture biologique.<br>Avertissement: Déconseillé aux femmes enceintes.<br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Bain Aromatique Sport 100ml BIO",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => '

<p>Soulagez vos muscles et articulations apr&egrave;s chaque effort physique avec le bain aromatique Sport de Biover. Le savant m&eacute;lange d&acute;huiles essentielles biologiques dans cette formule transforme un bain chaud après le sport en une exp&eacute;rience d&eacute;licieusement relaxante ! Le gen&eacute;vrier a un effet bénéfique sur les muscles et articulations raides.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Versez un bouchon de bain aromatique sous l&acute;eau du robinet (36 - 38 &deg;C). Profitez d&acute;un bain r&eacute;parateur pendant 15 à 20 minutes. 
	    </td>
	  </tr>
          <tr>
	    <td>
	      Ingrédients: GLYCERIN, SULFATED CASTER OIL, AQUA, GAULTHERIA FRAGRANTISSIMA OIL*, ROSMARINUS OFFICINALIS OIL*, BENZYL ALCOHOL, EUCALYPTUS CITRIODORA OIL*, EUCALYPTUS GLOBULUS OIL*, PINUS SYLVESTRIS OIL*, DEHYDROACETIC ACID, JUNIPERUS COMMUNIS OIL*, LIMONENE&deg;, CITRONELLOL&deg;, LINALOOL&deg;, GERANIOL&deg;, EUGENOL&deg;, CITRAL&deg;.<br>
*Cosmétique écologique et biologique certifié par ECOCERT Greenlife.<br>
&deg;Les huiles essentielles 100% naturelles.<br>
Avertissement: Ne convient pas aux femmes enceintes ni aux enfants de moins de 3 ans. Ne pas appliquer directement sur la peau à l&acute;&eacute;tat pur.. 
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Calcium Marin 100 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Pour des os forts! A prendre en cas de besoin d’un suppl&eacute;ment de calcium, pour le maintien d&acute;une ossature solide.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: A partir de 6 ans : 2 à 4 g&eacute;lules par jour.<br>
              Ingr&eacute;dients principaux: lithothamne (1936 mg), vitamine B6 (2 mg), acide folique (0.2 mg)
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Calcium Marin 40 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Pour des os forts! A prendre en cas de besoin d’un suppl&eacute;ment de calcium, pour le maintien d&acute;une ossature solide.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: A partir de 6 ans : 2 à 4 g&eacute;lules par jour.<br>
              Ingr&eacute;dients principaux: lithothamne (1936 mg), vitamine B6 (2 mg), acide folique (0.2 mg)
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Curcuma Articulations 60 comprimés",
    :shipping_category => shipping_category,
    :tax_category => complementalimentaire,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Le curcuma a un long pass&eacute; m&eacute;dicinal, notamment en m&eacute;decine Ayurv&eacute;dique, où il est employ&eacute; pour ces propri&eacute;t&eacute;s anti-inflammatoires.<br> Toutes les pathologies de type inflammatoire sont autant d&acute;indications du curcuma : Les tendinites, l’ath&eacute;roscl&eacute;rose, l&acute;art&eacute;rite, les douleurs articulaires, l&acute;arthrose, etc...<br> L’intérêt de prendre du curcuma qui a été reconnu cliniquement plus actif qu’un anti-inflammatoire de référence (la cortisone, ibuprofène, aspirine).</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Prendre 2 comprimés par jour avec un grand verre d’eau.
	    </td>
	  </tr>
          <tr>
	    <td>
            Ingrédients: Extrait de rhizome de curcuma, citrate de calcium, carbonate de magnésium, sirop de riz, amidon de froment, extrait de racine d’harpagophytum, extrait de rhizome de gingembre, poudre de grain de poivre noir.<br>
            *AB : Agriculture Biologique certifiée par ECOCERT<br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Curcuma Extrait Fluide 300 ml AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Le curcuma favorise le bon fonctionnement du foie et soulage les problèmes digestifs. Le curcuma a des effets protecteurs sur la muqueuse gastrique.
<br> 
L&acute;efficacité des rhizomes du curcuma pour traiter la dyspepsie, c&acute;est-à-dire des troubles digestifs, comme les maux d&acute;estomac, les naus&eacute;es, la perte d&acute;appétit ou les sensations de lourdeur a &eacute;t&aecute; d&eacute;montr&eacute;e cliniquement. En outre, Le curcuma agit sur le syndrome du colon irritable en stimulant la production et la qualit&eacute; du mucus gastrique qui tapisse la paroi intestinale permettant ainsi de combattre les irritations et de favoriser la r&eacute;&eacute;ducation du transit intestinal et par cons&eacute;quent l’att&eacute;nuation des douleurs abdominales.
<br>
Action anti-oxydante remarquable: C’est un « piège » à radicaux libres. Action anti-&acirc;ge: La curcumine influence l&acute;activit&eacute; de l&acute;&eacute;lastase (enzyme qui d&eacute;truit l&acute;&eacute;lastine de notre peau entrainant l&acute;apparition des rides et le manque de fermeté de la peau). Propriétés anti-inflammatoires: Reconnu cliniquement plus actif que l’anti-inflammatoire de r&eacute;f&eacute;rence: la cortisone. La curcumine calme les irritations cutan&eacute;es, soulage les probl&egrave;mes articulaires en g&eacute;n&eacute;ral, comme celui de l&acute;arthrose. Utilis&eacute; depuis longtemps comme anti-inflammatoire dans la m&eacute;decine ayurv&eacute;dique indienne.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Agitez avant emploi. Diluez l&acute;&eacute;quivalent de 10 ml de « curcuma bio extrait fluide » &agrave; l&acute;aide du bouchon doseur dans un verre d&acute;eau 2 fois par jour. Rincez le bouchon doseur avant et après chaque utilisation.<br>
Ingr&eacute;dients: Extrait hydro-alcoolique glyc&eacute;rin&eacute; de rhizome de curcuma *(Curcuma longa). Alcool 4, 95&deg;.<br>
*Issus de l&acute;Agriculture biologique.<br>
Pour 20 ml: Extrait de curcuma: 20 000 mg (20 g) dont curcumine: 200 mg.<br>
Avertissement: D&eacute;conseill&eacute; aux femmes enceintes et allaitantes et aux jeunes enfants. Conserver à l&acute;abri de la chaleur et au r&eacute;frig&eacute;rateur apr&egrave;s ouverture. <br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
    {
    :name => "Extrait de Plante Fraiche Cassis 50ml AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 8.95,
    :eur_price => 8.95,
    :description => '

<p>Le cassis a une influence favorable sur la raideur des muscles et articulations et aide à maintenir leur souplesse.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	     Utilisation: 3 x 30 gouttes par jour dans un verre d’eau ou de jus de fruits.<br>
             Ingrédients: Ribes nigrum extrait hydroalcoolique 100% (alcool* 66% vol, cassis* (feuille), eau).<br>
             *culture biologique.<br>
             Avertissement: Déconseillé aux femmes enceintes.
	    </td>
	  </tr>
	</tbody>
</table>

',
  }
]

products.each do |product_attrs|
  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "EUR"
  product.reload
  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"
