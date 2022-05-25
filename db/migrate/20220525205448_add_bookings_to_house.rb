class AddBookingsToHouse < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :start_date, :datetime
    add_column :houses, :end_date, :datetime
  end
end
