class Category < ActiveRecord::Base
  attr_accessible :name

	define_index do
		indexes name
	end
	
	def self.search(search)
		if search
			where("name LIKE ?", "%#{search}")
		else
		find(:all)
		end
	end
end
