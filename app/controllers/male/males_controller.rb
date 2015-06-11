class Male::MalesController < ApplicationController

	def index
		@men = User.where(gender: params[:])
	end

end