class Admin < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true
  validates :name, :presence => true
  validates :name, :presence => true
end
