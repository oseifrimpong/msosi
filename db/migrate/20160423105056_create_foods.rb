class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.string :name 
    	#t.string :price
    	t.string :image
    	t.string :cuisine
    	t.string :description

      t.timestamps null: false
    end
  end
end
