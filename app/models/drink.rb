class Drink < ActiveRecord::Base

validates :name, presence: true
belongs_to :type
end
