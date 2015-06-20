Rails.application.routes.draw do
  get 'advertisiments/index'

  get 'advertisiments/show'

  resources :posts
  resources :advertisements

  get 'about' =>'welcome#about'
  
  root to: 'welcome#index'
  
end
