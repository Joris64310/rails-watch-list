Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new show create] do
    resources :bookmarks, only: %i[new create]
  end
  # Defines the root path route ("/")
  root to: 'lists#index'
end
