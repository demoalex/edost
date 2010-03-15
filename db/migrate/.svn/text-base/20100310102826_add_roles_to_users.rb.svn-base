class AddRolesToUsers < ActiveRecord::Migration
  def self.up
  	add_column :users, :role, :int, :default=>0
  end

  def self.down
  	remove_column :users, :role
  end
end
