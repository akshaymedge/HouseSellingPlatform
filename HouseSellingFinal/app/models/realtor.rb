class Realtor < ApplicationRecord
  has_one :realestatecompany
  #attr_accessible : houses

  #attr_accessor :email
  validates :email, :presence => true , uniqueness: true

  #attr_accessor :name
  validates :name, :presence => true # ,format: { with: /\A[a-zA-Z]+\z/}

  #attr_accessor :password
  validates :password, :presence => true

  #attr_accessor :companyId
  validates :companyid, :presence => true ,numericality: { only_integer: true }
end
