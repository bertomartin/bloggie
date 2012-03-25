class Bloggie::PostsController < ApplicationController
  def index
    @posts = BlogPost.published.newest
  end
end