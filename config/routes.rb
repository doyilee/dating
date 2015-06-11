Rails.application.routes.draw do

  root'pages#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  namespace :male do
    get '/' => 'males#index'
    get '/woman' => 'males#show'
  end

  namespace :female do
    get '/' => 'females#index'
    get '/man' => 'females#show'
  end

end
