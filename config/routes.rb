Rails.application.routes.draw do
  namespace :fuga do
    resources :hoges
  end
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'pages#index'

  get 'pages/show'

  get 'home/index'

  get 'welcome/index'

  resources :photos, :only => [:create]

  # get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
