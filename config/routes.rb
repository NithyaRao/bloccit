Rails.application.routes.draw do
<<<<<<< HEAD
  
  resources :posts, :advertisements
=======
  get 'advertisiments/index'

  get 'advertisiments/show'

  resources :posts
  resources :advertisements

>>>>>>> f22f4ee5444f75defcf7314972ec0ded104e6c47
  get 'about' =>'welcome#about'
  
  root to: 'welcome#index'
  
end
