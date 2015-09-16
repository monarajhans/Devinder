Rails.application.routes.draw do

  root 'homes#index'

  get 'home' => 'homes#index'
  post 'projects' => 'projects#new'
  get 'projects' => 'projects#index'
  get 'users' => 'users#index'
  post 'users' => 'users#new'
  get 'users/new' => 'users#login'
  get 'users/errors' => 'users#new'
  get 'homes/about' => 'homes#show'
  get 'homes/team' => 'homes#team'
  get 'homes/careers' => 'homes#careers'
  get 'homes/privacy' => 'homes#privacy'
  get 'homes/faq' => 'homes#faq'
  get 'homes/terms' => 'homes#terms'

  resources :projects do
    member do
      get 'contributors'
    end
  end

  resources :users do
    member do
      get 'offers'
    end
  end

end
