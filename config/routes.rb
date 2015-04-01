Rails.application.routes.draw do
  resources :welcome

  get 'welcome/about'

 resources :jobs

 root to: 'jobs#index'
end
