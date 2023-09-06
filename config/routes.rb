Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/albums', to: 'albums#index', as: 'albums'
  get 'albums/:folder_name', to: 'albums#show_album', as: 'album'
end
