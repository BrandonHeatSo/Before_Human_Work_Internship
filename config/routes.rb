Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  
  # rootパスをDeviseログイン画面に設定
  devise_scope :user do
    root :to => "devise/sessions#new"
  end

  devise_for :users

  # /users/dash_boards へのルートを追加
  get '/users/dash_boards', to: 'users/dash_boards#index', as: 'users_dash_boards'
  
  # root 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
