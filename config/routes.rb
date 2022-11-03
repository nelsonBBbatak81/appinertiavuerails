Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "guests#index"

  # guests url
  get '/about' => 'guests#about', as: :about 
  get '/login'=> 'guests#login', as: :login
  get '/register' => 'guests#register', as: :register
end
