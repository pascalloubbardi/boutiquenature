Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "<%= link_to 'La Boutique Nature', products_path %>")
