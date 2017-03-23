class BusinessmenController < ApplicationController
	layout 'businessman'
	def show
		@products = current_businessman.products  || []
	end	

	def quick_help
 		render :layout => 'alternate'
	end

end
