Rails.application.routes.draw do
  resources :items
  root to: "items#index"
  devise_for :users  
  resources :charges
end




# resource :geocoder
# resolve('Geocoder') { [:geocoder] }


# resources :brands, only: [:index, :show] do
# resources :products, only: [:index, :show]