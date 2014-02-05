class AddCrossSt2ColumnToAdventuresTable < ActiveRecord::Migration
  def change
    add_column :adventures, :cross_st2, :string
  end
end
