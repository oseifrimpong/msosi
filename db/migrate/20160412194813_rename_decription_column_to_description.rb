class RenameDecriptionColumnToDescription < ActiveRecord::Migration
  
  def self.up
  	rename_column :foods, :decription, :description
  end

  def self.down 
  	rename_column :foods, :description, :decription
  end
end
