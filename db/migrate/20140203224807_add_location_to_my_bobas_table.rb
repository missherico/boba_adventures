class AddLocationToMyBobasTable < ActiveRecord::Migration
  def change
  	add_column :my_bobas, :location, :string

  end
end
