class BlogController < ApplicationController
  before_filter do
    @categories = BlogCategory.order(:name)
  end
end