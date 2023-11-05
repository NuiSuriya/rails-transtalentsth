class NewsPost < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  belongs_to :category

  has_many :news_post_tags # This should be the join table name
  has_many :tags, through: :news_post_tags # This references the tags associated with this news post

  has_many_attached :photos
  has_many_attached :trix_attachments

  validates :title, :slug, :content, :date, :photos, :min_to_read, presence: true

  # validates :vdo_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'must be a valid URL' }

  friendly_id :slug, use: :slugged

  def should_generate_new_friendly_id?
    slug_changed? || slug.blank?
  end

  def excerpt
    title.truncate(50)
  end

  def is_pinned?
    is_pinned
  end


  def to_param
    slug
  end

end
