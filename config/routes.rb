Rails.application.routes.draw do
  get '/user/show', to: 'user#show'
  root 'user#show'

  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
