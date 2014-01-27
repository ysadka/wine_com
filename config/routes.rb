WineCom::Application.routes.draw do
  root to: "users#index"

  devise_for :users

  resources :addresses, except: :show
  resources :wines
end
