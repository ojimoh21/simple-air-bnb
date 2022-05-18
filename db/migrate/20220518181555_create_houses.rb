class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :guests
      t.integer :bedrooms
      t.integer :beds
      t.integer :bathrooms
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
