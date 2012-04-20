Rails.application.routes.draw do

  match "/blog", :to => redirect("/charlottesville/wedding-blog")
  match "/blog/:id", :constraints => {:id => /.+/}, :to => redirect("/charlottesville/wedding-blog/%{id}")

  match "/charlottesville/blog", :to => redirect("/charlottesville/wedding-blog")
  match "/charlottesville/blog/:id", :constraints => {:id => /.+/}, :to => redirect("/charlottesville/wedding-blog/%{id}")

  scope "/charlottesville/wedding-blog", module: 'Bloggie' do
    root :to => 'blog_posts#index', as: 'blog'
    resources :blog_posts, path: 'post' do
      resources :blog_comments, path: 'comments'
    end
    resources :blog_categories, path: 'categories'
  end
  
end
