Bloggie::Engine.routes.draw do
  root :to => 'blog_posts#index', as: 'blog'
  resources :blog_posts, path: 'posts' do
    resources :blog_comments, path: 'comments'
  end
  resources :blog_categories, path: 'categories'
end
