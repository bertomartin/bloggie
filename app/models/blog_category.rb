class BlogCategory < ActiveRecord::Base
  has_many :blog_post_categories
  has_many :blog_posts, through: :blog_post_categories
end