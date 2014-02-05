class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.text   :description
      t.string :cross_st1
      t.string :address
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
