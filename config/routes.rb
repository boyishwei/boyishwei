Rails.application.routes.draw do
  resources :blogs

  root 'welcome#index'

  post 'user/login', to: 'user#login'
  get 'blogs', to: 'blog#index'
  get 'logout', to: 'user#logout'
  get 'login', to: 'user#login'

  resources :posts, :blogs
end
