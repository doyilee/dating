class Female::FemalesController < ApplicationController

	def index
		@men = User.where(gender: params[:gender]).all
	end
end