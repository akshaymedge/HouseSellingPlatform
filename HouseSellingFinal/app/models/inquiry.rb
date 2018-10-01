class Inquiry < ApplicationRecord
  belongs_to :househunter

  validates :Subject, :presence => true
  validates :MessageContent, :presence => true
end
