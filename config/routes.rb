Rails.application.routes.draw do
  namespace :api do
    resources :users
    get 'admin' => 'users#admin'
    post 'user_token' => 'user_token#create'
    resources :movies
    post 'favorites/:id' => 'favorites#create'
    delete 'favorites/:id' => 'favorites#destroy'
    get 'favorites/:id' => 'favorites#show'
    get 'favorites' => 'favorites#index'
    get 'movie_by_genre/:genre' => 'movies#show_by_genre'
    get 'title/:title' => 'movies#find_by_title'
  end

  
end
