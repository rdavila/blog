ActionController::Routing::Routes.draw do |map|
  map.root      :controller => 'homes', :action => 'show'

  map.resource  :ui
  map.resources :posts, :only => :show
  map.resources :categories

  map.seo_post '/:year/:month/:day/:id', 
    :controller => 'posts', :action => 'show'

  map.connect '/search', :controller => 'posts', :action => 'search'
  map.connect ':action', :controller => 'pages'
end
