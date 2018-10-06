  class House < ApplicationRecord
    belongs_to :realtor
    has_many :househunters
    has_many :inquiries
    #attr_accessor :houseId
    validates :houseId, :presence => true , uniqueness: true ,numericality: { only_integer: true }

    #attr_accessor :companyId
    validates :companyid, :presence => true ,numericality: { only_integer: true }

    #attr_accessor :location
    validates :name, :presence => true

    #attr_accessor :password
    validates :password, :presence => true

    #attr_accessor :squareFootage
    validates :squareFootage, :presence => true ,numericality: { only_integer: true }

    #attr_accessor :yearBuilt
    validates :yearBuilt, :presence => true ,numericality: { only_integer: true }

    #attr_accessor :style
    validates :style, :presence => true

    #attr_accessor :listPrice
    validates :listPrice, :presence => true ,numericality: { only_integer: true }

    #attr_accessor :noOfFloors
    validates :noOfFloors, :presence => true ,numericality: { only_integer: true }

    #attr_accessor :currentHouseOwner
    validates :currentHouseOwner, :presence => true

    #attr_accessor :contactInfo
    validates :contactInfo, :presence => true

    #attr_accessor :potentialBuyers
    validates :potentialBuyers, :presence => true

    #attr_accessor :basement
    validates :basement, :presence => true , inclusion: { in: [true, false] }
  end
