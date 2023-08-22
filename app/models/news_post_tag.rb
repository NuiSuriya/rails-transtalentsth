class NewsPostTag < ApplicationRecord
  belongs_to :tag
  belongs_to :news_post
end
