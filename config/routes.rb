Rails.application.routes.draw do
  resources :tag_product_maps
  resources :products
  resources :tags
  resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
