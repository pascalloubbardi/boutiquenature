Deface::Override.new(:virtual_path => "spree/shared/_search", 
                     :name => "search", 
                     :replace => ".navbar-form", 
                     :text => "

<div class='form-group'>
<% cache(cache_key_for_taxons) do %>
<%= select_tag :taxon,
options_for_select([[Spree.t(:all_departments), '']] +
@taxons.map {|t| [t.name, t.id]},
@taxon ? @taxon.id : params[:taxon]), 'aria-label' => 'Taxon', class: 'form-control' %>
<% end %>
</div>
<div class='form-group'>
<%= search_field_tag :keywords, params[:keywords], :placeholder => Spree.t(:search), class: 'form-control' %>
</div>
<%= submit_tag Spree.t(:search), :name => nil, class: 'button' %>

")