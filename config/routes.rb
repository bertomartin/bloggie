Bloggie::Engine.routes.draw do
  root :to => 'index#index', controller: Bloggie::IndexController
end
