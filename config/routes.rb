Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_up: "join"}, controllers: { registrations: 'users/registrations' }
  resources :listings, :shops, :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#index", as: "root"
end
