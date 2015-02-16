class User < ActiveRecord::Base
has_secure_password		     #This is necessary for the Bcrypt gem

validates_confirmation_of :password     #Allows you to get a confirmation of a pasword

validates_uniqueness_of :email


end
