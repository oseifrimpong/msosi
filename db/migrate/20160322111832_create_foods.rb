class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.string :name 
    	t.string :decription
    	t.string :image
    	t.float :price
        t.boolean :active
    	t.string :cuisine
    	
    	#check on how to handle images in Rails + postgresql
    	#t.string :image

      t.timestamps null: false
    end
  end
end
