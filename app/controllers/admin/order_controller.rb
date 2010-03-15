class Admin::OrderController < ApplicationController
 before_filter :authenticate_user!
		active_scaffold :orders do |config|
			
			config.create.columns.add_subgroup "Good" do |name_group|
				name_group.add :title, :amount, :link, :vars
			end
			config.create.columns.add_subgroup "Cost" do |name_group|
				name_group.add :cost1, :cost2, :cost3, :realCost1, :realCost2, :realCost3
			end
			config.update.columns.add_subgroup "Good" do |name_group|
				name_group.add :title, :amount, :link, :vars
			end
			config.update.columns.add_subgroup "Cost" do |name_group|
				name_group.add :cost1, :cost2, :cost3, :realCost1, :realCost2, :realCost3
			end
			config.list.columns=[:userid, :title, :amount, :created_at ,:updated_at,:link, :vars, :notes, :cost1, :cost2, :cost3, :realCost1, :realCost2, :realCost3, :status]
			config.list.sorting = { :status => :asc }

		end
end
