class ArticleController < ApplicationController
layout "default2"
	def faq		
		@action='faq'
	end
	def contacts
		@action='contacts'
	end
	def index
		@action='index'
	end
end
