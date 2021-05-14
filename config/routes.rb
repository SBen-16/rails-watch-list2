Rails.application.routes.draw do
  get 'bookmarks/index'
  get 'bookmarks/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
  resources :lists do
    resources :bookmarks
  end
end
