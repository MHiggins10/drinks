class Type < ActiveRecord::Base
has_many :drinks, :dependent => :destroy
end
