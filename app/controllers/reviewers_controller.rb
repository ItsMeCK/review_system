class ReviewersController < ApplicationController
	
	def show
		@reviewer = current_reviewer
		@product = Product.all
  end

end
