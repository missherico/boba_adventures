class AddCityAndStateColumnsToNeighborhoods < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :city, :string
  	add_column :neighborhoods, :state, :string

  end
end
