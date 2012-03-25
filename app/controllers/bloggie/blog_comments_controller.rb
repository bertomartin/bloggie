class Bloggie::CommentsController < Bloggie::ApplicationController
  def create
    
    if params[:blog_post_id].match /$\d+^/
      throw "For security reasons, we don't allow folks to look up blog posts by their primary key."
    end
    @post = BlogPost.find(params[:blog_post_id])
    
    # remove fields that shouldn't updatable in this context.
    params[:blog_comment].delete :post_id
    params[:blog_comment].delete :approved
    params[:blog_comment].delete :created_at
    params[:blog_comment].delete :updated_at
        
    @comment = @post.blog_comments.new(params[:blog_comment])

    # let's just approve everything for now.
    @comment.approved = true

    if @comment.save
      redirect_to @post
    end

  end
end