Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "user acount icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:my_account), spree.account_path')", 
                     :text => "<%= link_to spree.account_path, title: 'Mon compte' do %>
                               <span class='glyphicon glyphicon-user' aria-hidden='true'></span>
                               <% end %>&nbsp;&nbsp;



")
