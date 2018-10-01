class Realestatecompany < ApplicationRecord
  has_many :realtors
  has_many :houses
  #attr_accessor :companyId
  validates :companyid, :presence => true ,numericality: { only_integer: true } , uniqueness: true

  #attr_accessor :name
  validates :name, :presence => true ,format: { with: /\A[a-zA-Z]+\z/}

  #attr_accessor :website
  validates :website, :presence => true

  #attr_accessor :address
  validates :address, :presence => true

  #attr_accessor :size
  validates :size, :presence => true

  #attr_accessor :founded
  validates :founded , :presence => true ,numericality: { only_integer: true }

  #attr_accessor :revenue
  validates :revenue, :presence => true

  #attr_accessor :synopsis
  validates :synopsis, :presence => true
end
