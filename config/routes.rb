Bloggie::Engine.routes.draw do
  root :to => 'posts#index', controller: Bloggie::PostsController
end
