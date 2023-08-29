class BlogPostTag < ApplicationRecord
  belongs_to :tag
  belongs_to :blog_post
end
