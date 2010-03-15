class AddDefault < ActiveRecord::Migration
  def self.up
  	change_column :orders, :cost1, :decimal, :length=> 9, :precision=> 2, :default=>0
  	change_column :orders, :cost2, :decimal, :length=> 9, :precision=> 2, :default=>0
  	change_column :orders, :cost3, :decimal, :length=> 9, :precision=> 2, :default=>0
  	change_column :orders, :realCost1, :decimal, :length=> 9, :precision=> 2, :default=>0
  	change_column :orders, :realCost2, :decimal, :length=> 9, :precision=> 2, :default=>0
  	change_column :orders, :realCost3, :decimal, :length=> 9, :precision=> 2, :default=>0
  end

  def self.down
  	change_column :orders, :cost1, :decimal, :length=> 9, :precision=> 2
  	change_column :orders, :cost2, :decimal, :length=> 9, :precision=> 2
  	change_column :orders, :cost3, :decimal, :length=> 9, :precision=> 2
  	change_column :orders, :realCost1, :decimal, :length=> 9, :precision=> 2
  	change_column :orders, :realCost2, :decimal, :length=> 9, :precision=> 2
  	change_column :orders, :realCost3, :decimal, :length=> 9, :precision=> 2
  end
end
