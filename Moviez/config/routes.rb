Moviez::Application.routes.draw do
  root :to => 'welcome#index'
  get '/movies/search' => 'movies#search', as: 'movies_search'
  post '/movies/:id/create' => 'movies#create', as: 'save'
  post '/movies/:id/destroy' => 'movies#destroy', as: 'destroy'
  resources :movies


end