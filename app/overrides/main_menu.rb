Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
                     :name => "main_menu", 
                     :replace_contents => "#main-nav-bar", 
                     :text => "

<div class='navbar navbar-default navbar-static-top'>
  <div class='container'>
    <div class='navbar-header'>
      <%= link_to Spree.t(:home), spree.root_path, class: 'navbar-brand' %>
    </div>
  <div class='navbar-collapse collapse'>
    <ul class='nav navbar-nav'>
      
      <li class='dropdown menu-large''>
        <a href='#' class='dropdown-toggle' data-toggle='dropdown'> 
          Product Listing <b class='caret'></b>
        </a>
        <ul class='dropdown-menu megamenu row'>
          <li>
            <div class='col-sm-6 col-md-3'>
              <a href='#' class='thumbnail'>
                <img src='img/technology.jpg' />
              </a>
            </div>
            <div class='col-sm-6 col-md-3'>
              <a href='#' class='thumbnail'>
                <img src='img/technology1.jpg' />
              </a>
            </div>
            <div class='col-sm-6 col-md-3'>
              <a href='#' class='thumbnail'>
                <img src='img/technology2.jpg' />
              </a>
            </div>
            <div class='col-sm-6 col-md-3'>
              <a href='#' class='thumbnail'>
                <img src='img/technology3.jpg' />
              </a>
            </div>
          </li>
        </ul>
      </li>

      <% @taxonomies.each do |taxonomy| %> 
      <li class='dropdown menu-large'>
        <a href='#' class='dropdown-toggle' data-toggle='dropdown'>
          <%= taxonomy.name %> <b class='caret'></b>
        </a>
            <ul class='dropdown-menu megamenu row'>
                 <% @taxons.each do |taxon| %>
              <li class='col-sm-3'>
                <ul>  
                  <li class='dropdown-header'>
                     
                    <%= link_to taxon.name, seo_url(taxon) %>
                    
                  </li>
                  <li>
                    
                  </li>
                  <li>
                    <a href='#'>
                      Button toolbar
                    </a>
                  </li>
                  <li>
                    <a href='#'>
                      Sizing
                    </a>
                  </li>
                  <li>
                    <a href='#'>
                      Nesting
                    </a>
                  </li>
                  <li>
                    <a href='#'>
                      Vertical variation
                    </a>
                  </li>
                </ul>
              </li>
             <% end %> 
           </ul>
          <% end %>
        </li>
      </ul>
      
      <ul class='nav navbar-nav navbar-right'>
        <li id='link-to-cart'>
          <noscript>
            <%= link_to Spree.t(:cart), '/cart' %>
          </noscript>
          &nbsp;
        </li>
        <script>Spree.fetch_cart()</script>
      </ul>
    </div>
  </div>
</div>                     

")
