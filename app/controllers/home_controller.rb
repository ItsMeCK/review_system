class HomeController < ApplicationController

	layout 'home_page'
	def home_page
		@current_u = current_reviewer
	end	
end
