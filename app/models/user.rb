class User < ActiveRecord::Base

validates :Username, presence: true
has_many :reviews, :dependent => :destroy
end
