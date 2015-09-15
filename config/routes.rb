Rails.application.routes.draw do

  root 'homes#index'

  get 'home' => 'homes#index'
  post 'projects' => 'projects#new'
  get 'projects' => 'projects#index'
  get 'users' => 'users#index'
  post 'users' => 'users#new'
  get 'users/new' => 'users#login'
  get 'users/errors' => 'users#new'
  
  resources :projects

  resources :users do
    member do
      get 'offers'
    end
  end

  post 'project_details/:id/contribute' => 'project_details#contribute'
  post 'project_details/:id/offer' => 'project_details#offer'

end
