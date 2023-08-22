class Tag < ApplicationRecord
  has_many :news_posts, through: :news_post_tags
end
