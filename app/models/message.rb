class Message < ApplicationRecord
  has_many :subscriber_emails
  has_many :subscribers, through: :subscriber_emails

  validates :text, presence: true, length: { maximum: 50 }
end
