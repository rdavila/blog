ActionController::Routing::Routes.draw do |map|
  map.resource :ui
  map.root :controller => 'ui', :action => 'show'
end
