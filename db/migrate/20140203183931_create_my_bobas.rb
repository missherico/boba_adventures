class CreateMyBobas < ActiveRecord::Migration
  def change
    create_table :my_bobas do |t|
      
      t.string :yelp_id
      t.string :name, null: false
      t.text   :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :mobile_url
      t.text   :neighborhoods


      t.timestamps
    end
  end
end
