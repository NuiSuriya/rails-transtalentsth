class BlogPost < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :blog_post_tags
  has_many :tags, through: :blog_post_tags

  has_many_attached :photos
  has_many_attached :trix_attachments

  validates :title, :content, :date, :photos, :min_to_read, presence: true

  def excerpt
    title.truncate(50)
  end

  def is_pinned?
    is_pinned
  end
end
