class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
				t.string :country
				t.string :address
				t.string :city
				t.string :zip_code
				t.float :longitude
				t.float :latitude
				t.boolean :gmaps
      t.timestamps
    end
  end
end
