class Drink < ActiveRecord::Base

validates :name, presence: true
belongs_to :type

has_many :posts, :dependent => :destroy


	def self.search(search)
		search_condition = search + "%"
		find(:all, :conditions => ['name LIKE ?',search_condition])
	end
end
