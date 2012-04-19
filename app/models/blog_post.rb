class BlogPost < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :blog_post_categories
  has_many :blog_categories, through: :blog_post_categories
  has_many :blog_comments
  scope :newest, order(:published_at)
  scope :published, lambda { where('published_at IS NOT NULL AND published_at < ?', Time.zone.now) }
  
  # specific to borrowed-and-blue
  has_attached_file :image, styles: { medium: "290x190#", thumb: "100x100#" }
  
  def self.search(term)
    if term.present?
      term = "%#{term}%"
      return self.where("(lower(title) like lower(?) or lower(body) like lower(?))", term, term)
    else
      return self.scoped
    end
  end
  
end
