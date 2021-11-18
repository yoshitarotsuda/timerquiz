Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: [ :index, :create]
  resources :quizzes do
    collection do
      get 'seeds'
    end
  end
end
