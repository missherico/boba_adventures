class CreateFunThings < ActiveRecord::Migration
  def change
    create_table :fun_things do |t|
      t.string :activity
      t.string :neighborhood
      t.string :cross_st1
      t.string :cross_st2
      t.text :insider_tip

      t.timestamps
    end
  end
end
