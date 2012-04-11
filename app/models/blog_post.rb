class BlogPost < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :blog_post_categories
  has_many :blog_categories, through: :blog_post_categories
  has_many :blog_comments
  scope :newest, order('published_at desc')
  scope :published, lambda { where('published_at IS NOT NULL AND published_at < ?', Time.zone.now) }
  
  def self.search(term)
    if term.present?
      term = "%#{term}%"
      return self.where("(lower(title) like lower(?) or lower(body) like lower(?))", term, term)
    else
      return self.scoped
    end
  end
  
end