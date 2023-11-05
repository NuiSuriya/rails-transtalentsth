class BlogPost < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  belongs_to :category

  has_many :blog_post_tags
  has_many :tags, through: :blog_post_tags

  has_many_attached :photos
  has_many_attached :trix_attachments

  validates :title, :slug, :content, :date, :photos, :min_to_read, presence: true
  validates :slug, uniqness: true

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
