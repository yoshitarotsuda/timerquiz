Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: [ :index, :create] do
    collection do
      get 'guide'
      get 'terms'
      get 'record'
    end
  end
  resources :quizzes do
    collection do
      get 'seeds'
    end
    resources :comments, only: [:create, :destroy]
  end
end
