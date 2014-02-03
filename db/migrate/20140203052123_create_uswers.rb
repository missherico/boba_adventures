class CreateUswers < ActiveRecord::Migration
  def change
    create_table :uswers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
