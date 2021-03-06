Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/new' , to: 'users#new'

  post '/users' , to: 'users#create'

  get '/users' , to: 'users#index'

  delete '/users/:id', to: 'users#destroy'

  get '/users/:id/edit', to: 'users#edit'

  patch '/users/:id', to: 'users#update'

end
