Rails.application.routes.draw do
  root 'books#index'

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
end
