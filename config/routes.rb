Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  # Defines the route for the "about" page ("/about")
  get '/about', to: 'home#about'

  # Defines the route for the "albums" page ("/albums")
  get '/albums', to: 'home#albums'

  # Defines the route for the "contact" page ("/contact")
  get '/contact', to: 'home#contact'
end
