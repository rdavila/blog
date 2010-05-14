ActionController::Routing::Routes.draw do |map|
  map.root      :controller => 'homes', :action => 'show'

  map.resource  :ui
  map.resources :posts, :only => :show
  map.resources :categories

  map.connect '/search', :controller => 'posts', :action => 'search'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format' 
  map.connect ':action', :controller => 'pages'
  map.seo_post '/:year/:month/:day/:id', 
    :controller => 'posts', :action => 'show'
end
