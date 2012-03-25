class Bloggie::ApplicationController < ApplicationController
  before_filter do
    @categories = BlogCategory.order(:name)
  end
end