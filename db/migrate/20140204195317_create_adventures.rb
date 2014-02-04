class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.text   :description      
      t.string :neighborhood
      t.string :cross_st1
      t.string :cross_st2
      t.string :City
      t.string :State
      t.timestamps
    end
  end
end

      t.string :name
      t.string :email