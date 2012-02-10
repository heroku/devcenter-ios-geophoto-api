GeoPhoto::Application.routes.draw do
  resources :photos, :only => [:index, :show, :create]
end
