class ContactForm < ApplicationRecord
  belongs_to :message_category
  validates :name, :email, :phone_number, presence: true
end
