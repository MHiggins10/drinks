class User < ActiveRecord::Base
has_secure_password		     #This is necessary for the Bcrypt gem

has_many :posts, :dependent => :destroy

validates_confirmation_of :password     #Allows you to get a confirmation of a pasword

validates_uniqueness_of :email

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
