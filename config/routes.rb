Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  get '/register', to: 'users#new', as: 'register'
  # The line immediately overhead customizes the path as "register" instead of "new".
end


# get '/register', to: 'users#new', as: 'register'
# Now the application lets users navigate to /register to sign up, and you, the developer, can utilize your own custom register_path route helper throughout the app.
