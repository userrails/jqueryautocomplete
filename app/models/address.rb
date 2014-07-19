class Address < ActiveRecord::Base
   attr_accessible :address, :city, :country, :zip_code, :longitude, :latitude, :gmaps
	
		acts_as_gmappable

		def gmaps4rails_address
			"#{self.zip_code}"
		end

		def gmaps4rails_infowindow
			"Address: #{self.address} <br/> City: #{self.city} <br /> Longitude: #{self.longitude} <br/> Latitude: #{self.latitude}"
		end
end
