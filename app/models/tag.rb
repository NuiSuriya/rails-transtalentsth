class Tag < ApplicationRecord
  has_many :news_post_tags
  has_many :news_posts, through: :news_post_tags
end
