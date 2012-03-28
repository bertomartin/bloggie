Rails.application.routes.draw do

  match "/blog", :to => redirect("/charlottesville/blog")
  match "/blog/:id", :constraints => {:id => /.+/}, :to => redirect("/charlottesville/blog/%{id}")

  scope "/charlottesville/blog", module: 'Bloggie' do
    root :to => 'blog_posts#index', as: 'blog'
    resources :blog_posts, path: 'posts' do
      resources :blog_comments, path: 'comments'
    end
    resources :blog_categories, path: 'categories'
  end
end
