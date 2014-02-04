class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :hood
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
