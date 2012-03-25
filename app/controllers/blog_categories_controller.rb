class BlogCategoriesController < BlogController
  def show
    @category = BlogCategory.find(params[:id])
    @posts = @category.blog_posts.published
  end
end