class Category < ApplicationRecord
  has_many :blog_posts
  has_many :news_posts
end
