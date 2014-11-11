Rails.application.routes.draw do
  root 'welcome#index'

  get 'blogs', to: 'blog#index'
  resources :posts
end
