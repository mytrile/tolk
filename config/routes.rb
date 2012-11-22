Tolk::Engine.routes.draw do
  root :to => 'locales#index'
  resources :locales do
    member do
      get :all
      get :updated
    end
    collection do
      get :dump_all
    end
  end
  resource :search
end
