class BlogPost < ActiveRecord::Base
  has_many :blog_post_categories
  has_many :blog_categories, through: :blog_post_categories
  scope :newest, order(:published_at)
  scope :published, lambda { where('published_at IS NOT NULL AND published_at < ?', Time.zone.now) }
end