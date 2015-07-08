Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "login icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:login), spree.login_path')", 
                     :text => "<%= link_to login_path, title: 'Connexion'.html_safe do %>
                               <span class='glyphicon glyphicon-log-in' aria-hidden='true'style='font-size:15px' ></span>&nbsp;&nbsp;Connexion
                               <% end %>



")
