Rails.application.routes.draw do
  get 'auth/new'
  get 'home/index'

  root 'auth#new'

  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
