Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "<span class='glyphicon glyphicon-leaf' aria-hidden='true'></span>&nbsp;<%= link_to 'La Boutique Nature', root_path %>")
