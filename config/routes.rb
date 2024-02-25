Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Lists routes
  resources :lists, except: [:destroy, :edit, :update] do
    # Bookmarks routes
    resources :bookmarks, except: [:edit, :update, :index]
  end
  resources :bookmarks, only: [:destroy]
end
