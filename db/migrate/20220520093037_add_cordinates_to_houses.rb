class AddCordinatesToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :longitude, :float
    add_column :houses, :latitude, :float
  end
end
