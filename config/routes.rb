Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_up: "join"}, controllers: { registrations: 'users/registrations' }
  resources :listings, :shops, :products, :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#index", as: "root"
  post "/addtocart", to: "carts#add_to_cart"
  post "/statusaccepted", to: "listings#set_accepted"
  post "/statusdelivered", to: "listings#set_delivered"
  post "/payments", to: "payments#stripe"
  post "/removefromcart", to: "carts#remove_from_cart"
  get "/payments/success", to: "payments#success"

end
