class Female::FemalesController < ApplicationController

	def index
		@men = User.where(gender: 0)
	end
end