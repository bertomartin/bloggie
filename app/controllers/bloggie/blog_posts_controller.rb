class Bloggie::BlogPostsController < Bloggie::ApplicationController
  def index
    @posts = BlogPost.published.newest
    if params['search'].present?
      @posts = @posts.search(params['search'])
    end
  end
  def show
    if params[:id].match /$\d+^/
      throw "For security reasons, we don't allow folks to look up blog posts by their primary key."
    end
    @post = BlogPost.find(params[:id])
    @comments = @post.blog_comments.approved
  end
end