class BlogPost < ApplicationRecord
  belongs_to :category
  has_one_attached :photo
  has_many_attached :trix_attachments

  def excerpt
    title.truncate(50)
  end
end
