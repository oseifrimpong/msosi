class CreateDelivers < ActiveRecord::Migration
  def change
    create_table :delivers do |t|
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :identification_card
      t.timestamps null: false
    end
  end
end
