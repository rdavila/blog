ActionController::Routing::Routes.draw do |map|
  map.resource  :ui
  map.resource  :home
  map.root      :controller => 'homes', :action => 'show'
end
