class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :username
    	t.string :email
    	t.string :phone
    	t.string :delivery_address

      t.timestamps null: false
    end
  end
end
