class Testimonial < ApplicationRecord
  validates :content, length: { maximum: 150 }
  has_one_attached :photo
end
