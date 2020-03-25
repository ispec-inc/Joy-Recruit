Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies, only: [:index] do
    member do
        get :articles, to: 'companies#article_index'
    end
  end
end
