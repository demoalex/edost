class AddCycleToOrders < ActiveRecord::Migration
  def self.up
  	add_column :orders, :cycle, :int, :default=>0
  end

  def self.down
  	remove_column :orders, :cycle
  end
end
