class BlogPost < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :blog_post_categories
  has_many :blog_categories, through: :blog_post_categories
  has_many :blog_comments
  scope :newest, order(:published_at)
  scope :published, lambda { where('published_at IS NOT NULL AND published_at < ?', Time.zone.now) }
end