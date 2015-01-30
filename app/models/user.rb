class User < ActiveRecord::Base

validates_presence_of :UserName
has_many :reviews, :dependent => :destroy
end
