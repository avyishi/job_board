Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

 resources :jobs

 root to: 'jobs#index'
end
