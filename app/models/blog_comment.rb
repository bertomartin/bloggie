class BlogComment < ActiveRecord::Base
  belongs_to :blog_post
  scope :approved, where(approved: true)
end