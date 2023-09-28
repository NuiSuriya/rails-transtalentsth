class Speaker < ApplicationRecord
  validates :first_name, :last_name, :occupation, presence: true
  has_one_attached :photo
end
