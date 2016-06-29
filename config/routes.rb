Rails.application.routes.draw do
  
  root 'admin#admin'
  get 'admin' => 'admin#admin'

  get 'signup'  => 'users#users' 
  resources :users
  
  get '/login' => 'sessions#new'
  
  post 'login' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'

end
