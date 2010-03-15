class ChangeUseridToInt < ActiveRecord::Migration
  def self.up
  	change_column :orders, :userid, :int
  end

  def self.down
  	change_column :orders, :userid, :string
  end
end
