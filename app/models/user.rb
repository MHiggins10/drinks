class User < ActiveRecord::Base

validates :Username, presence: true
has_many :reviews, :dependent => :destroy

mount_Uploader :photo, PhotoUploader
end
