class CreateFaves < ActiveRecord::Migration
  def change
    create_table :faves do |t|
      t.integer :bobalocation_id
      t.integer :user_id
      t.timestamps
    end
  end
end
