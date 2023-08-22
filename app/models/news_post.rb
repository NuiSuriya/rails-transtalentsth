class NewsPost < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tages, through: :news_post_tags

  def is_pinned?
    is_pinned
  end
end
