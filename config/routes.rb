Rails.application.routes.draw do
  get 'sessions/login'
  post 'sessions/login_attempt'
  get 'sessions/logout'
  get 'users/new'
  get 'users/index'
  post 'users/create'
  post 'users/update/:id' => "users#update"
  get 'users/destroy/:id' => "users#destroy"
  root "posts#index"
  get 'posts/index'
  post 'posts/create'
  get 'posts/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
