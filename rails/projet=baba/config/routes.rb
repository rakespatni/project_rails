ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect '/registrations/',:controller=>'registrations',:action=>'disp'

  map.connect '/registrations/new',:controller=>'registrations',:action=>'new'
  
  map.connect '/registrations/create',:controller=>'registrations',:action=>'create'
  map.connect '/registrations/err',:controller=>'registrations',:action=>'err'
  map.connect '/registrations/check',:controller=>'registrations',:action=>'check' 
  map.connect '/registrations/link',:controller=>'registrations',:action=>'link'
  map.connect '/registrations/part',:controller=>'registrations',:action=>'part'
  map.connect '/available_items/:id/delete',:controller=>'available_items',:action=>'destroy'
  map.connect '/available_items/:id/edit' ,:controller=>'available_items',:action=>'edit'
  map.connect '/available_items/:id/update',:controller=>'available_items',:action=>'update'
  map.connect '/registrations/:id',:controller=>'registrations',:action=>'show'
  map.connect '/available_items/avail_index',:controller=>'available_items',:action=>'avail_index'
  map.connect '/available_items/phone_index',:controller=>'available_items',:action=>'phone_index'
  map.connect '/available_items/misc',:controller=>'available_items',:action=>'misc'
  
  map.connect '/available_items/createa',:controller=>'available_items',:action=>'createa' 
  
  map.connect '/available_items/:id',:controller=>'available_items',:action=>'avail_show'
  map.connect '/orders/show_my_order',:controller=>'orders',:action=>'show_my_order'
  map.connect '/orders/new_order',:controller=>'orders',:action=>'new_order'
  map.connect '/orders/createa',:controller=>'orders',:action=>'createa'
  map.connect '/orders/:id',:controller=>'orders',:action=>'show_order'
 
  #map.connect '/registrations/jump',:controller=>'registrations',:action=>'jump'
  #map.connect '/registrations/r_index',:controller=>'registrations',:action=>'r_index'
  #map.connect '/available_items/:id',:controller=>'available_items',:action=>'avail_show'
  
 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  
  
 
end
