class Male::MalesController < ApplicationController

	def index
		@women = User.where(gender: 1)
	end

end