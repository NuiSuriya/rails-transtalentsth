class ContactForm < ApplicationRecord
  belongs_to :message_category
  validates :name, :email, :phone_number, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
