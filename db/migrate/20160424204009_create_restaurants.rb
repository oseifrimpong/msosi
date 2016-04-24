class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :phone
    	t.string :address
    	t.string :email
    	t.time :open_time
    	t.time :close_time
    	
      t.timestamps null: false
    end
  end
end
