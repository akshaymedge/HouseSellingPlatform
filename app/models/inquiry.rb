class Inquiry < ApplicationRecord
  belongs_to :house
  has_many :replies
  validates :message_content, presence: true
end
