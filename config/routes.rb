Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
    controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  scope "(:locale)", locale: /en|vi/ do
  	root "static_pages#home"
  	resources :products
    resources :product_orders
    resources :shops, only: [:index, :show]
    namespace :shops do
      resources :products
      resources :categories
    end
    namespace :admin do
      root "dashboard#index"
    end

    resources :conversations do
      resources :messages
    end

    resources :users
    resources :addresses
    resources :carts
    resources :checkouts
    resources :reviews
  end
end
