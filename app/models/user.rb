class User < ApplicationRecord

  #belongs_to :role
  has_secure_password
  validates :name, :role,:email, presence: true
  validates :email, uniqueness: true
  #validates :password, presence: true, allow_nil: true #, :if => :password # only validate if password changed!
  #attr_accessor :email , :password , :password_confirmation


#  def admin?
 #   role.name == 'Admin'
 # end

  #def realtor?
   # role.name == 'Realtor'
  #end

  #def househunter?
   # role.name == 'HouseHunter'
  #end
end
