class AddBobalocationIdToAdventures < ActiveRecord::Migration
  def change
    add_column :adventures, :bobalocation_id, :integer
  end
end
