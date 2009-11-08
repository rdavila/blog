ActionController::Routing::Routes.draw do |map|
  map.resource  :ui
  map.root      :controller => 'homes', :action => 'show'
end
