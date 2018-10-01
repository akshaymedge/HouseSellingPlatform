class Househunter < ApplicationRecord
  validates :email, :uniqueness => true, :presence => true
  validates :name, :presence => true
  validates :password, :presence => true
  validates :phone, numericality: {only_integer: true} , :presence => true
  validates :contactmethod, inclusion: {in: %W{Email Phone Text}}
end
