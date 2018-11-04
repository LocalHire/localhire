class AddGeocodingColumnsToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :street, :string
    add_column :items, :city, :string
    add_column :items, :state, :string
    add_column :items, :postcode, :string
    add_column :items, :latitude, :float
    add_column :items, :longitude, :float
  end
end
