ActionController::Routing::Routes.draw do |map|
  map.root      :controller => 'homes', :action => 'show'

  map.resource  :ui
  map.resources :posts, :only => :show

  map.seo_post '/:year/:month/:day/:id', 
    :controller => 'posts', :action => 'show'

  map.connect ':action', :controller => 'pages'
end
