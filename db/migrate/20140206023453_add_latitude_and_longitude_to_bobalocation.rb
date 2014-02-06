class AddLatitudeAndLongitudeToBobalocation < ActiveRecord::Migration
  def change
    add_column :bobalocations, :latitude, :float
    add_column :bobalocations, :longitude, :float
  end
end
