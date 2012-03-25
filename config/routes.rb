Bloggie::Engine.routes.draw do
  root :to => 'blog_posts#index'
  resources :blog_posts, path: 'posts'
  resources :blog_categories, path: 'categories'
end
