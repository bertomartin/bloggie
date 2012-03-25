class BlogCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :blog_post_categories
  has_many :blog_posts, through: :blog_post_categories
end