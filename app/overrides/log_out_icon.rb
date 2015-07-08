Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "logout icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:logout), spree.logout_path')", 
                     :text => "<%= link_to spree.logout_path, title: 'D&eacute;conexion'.html_safe do %>
                               <span class='glyphicon glyphicon-log-out' aria-hidden='true'></span>
                               <% end %>



")
