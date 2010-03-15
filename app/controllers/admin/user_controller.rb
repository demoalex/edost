class Admin::UserController < ApplicationController
before_filter :authenticate_user!
		active_scaffold :users do |config|
			
			config.list.columns=[:id, :email, :created_at ,:updated_at, :confirmed_at, 
			:phone, :icq, :adress, :other, :role]
			config.list.sorting = { :role => :asc }

		end
end
