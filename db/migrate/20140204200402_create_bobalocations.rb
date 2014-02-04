class CreateBobalocations < ActiveRecord::Migration
  def change
    create_table :bobalocations do |t|
      t.string :yelp_id

      t.timestamps
    end
  end
end
