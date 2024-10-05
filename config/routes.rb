Rails.application.routes.draw do
  
  resources :users, only: [:show, :edit, :update]
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  devise_for :users
  
get '/' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "homes/about" => "homes#about", as: 'about'

end
