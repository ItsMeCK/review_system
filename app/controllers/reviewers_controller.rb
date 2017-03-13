class ReviewersController < ApplicationController
	def show
		@reviewer = current_reviewer
  	end
end
