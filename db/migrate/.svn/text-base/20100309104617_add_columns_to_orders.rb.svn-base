class AddColumnsToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :title, :string
    add_column :orders, :link, :string
    add_column :orders, :notes, :text
    add_column :orders, :amount, :int, :default =>1
    add_column :orders, :vars, :text
    add_column :orders, :userid, :string
    add_column :orders, :status, :int
    add_column :orders, :cost1, :decimal, :precision=>9, :scale=>2
    add_column :orders, :cost2, :decimal, :precision=>9, :scale=>2
    add_column :orders, :cost3, :decimal, :precision=>9, :scale=>2
    add_column :orders, :realCost1, :decimal, :precision=>9, :scale=>2
    add_column :orders, :realCost2, :decimal, :precision=>9, :scale=>2
    add_column :orders, :realCost3, :decimal, :precision=>9, :scale=>2
    
  end

  def self.down
    remove_column :orders, :title
    remove_column :orders, :link
    remove_column :orders, :notes
    remove_column :orders, :amount
    remove_column :orders, :vars
    remove_column :orders, :userid
    remove_column :orders, :status
    remove_column :orders, :cost1
    remove_column :orders, :cost2
    remove_column :orders, :cost3
    remove_column :orders, :realCost1
    remove_column :orders, :realCost2
    remove_column :orders, :realCost3
  end
end
