Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "search#new"
  post "/search", to: "search#results"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
