module AdminHelper
	def amount_column(record)
    	link_to(h(record.amount), :action => :show, :controller => 'divisions')
  	end
 	def status_column(record)
		decrypt_status(record.status)
	end
	def role_column(record)
		decrypt_role(record.role)
	end
end
