# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def decrypt_role(role)
		case role
		when 5
			'Администратор' 			
		when 4
			'Менеджер A'
		when 3
			'Менеджер B'
		when 2
			'Пользователь'
		when 1
			'Гость'
		else
			'Не авторизован'
		end		
	end
	def decrypt_status(status)	
		case (status)
	 		when 0
	 			'ожидание'
 			when 1
 				'рассмотрение'
 			when 2
 				'доставка на склад'
 			when 3
 				'доставка в Россию'
 			when 4
 				'на складе в Мск'
 			when 5
 				'получен клиентом'
			else
	 			'где-то'
	 	end	
	end
	def decrypt_cycle(cycle)
		case (cycle)
		when 0
			'table-wait'
		when 1
			'table-alive'
		when 2
			'table-done'
		when 3
			'table-error'
		else
			'table-fault'
		end
	end
end
