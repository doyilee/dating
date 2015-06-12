class SessionsController < ApplicationController
  def new

  end

  def create
  	@user = User.where(username: params[:username]).first
  	if @user.present? && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		flash[:notice] = "You have logged in."
  		if @user.gender == 'male'
  			redirect_to male_path
  		elsif @user.gender == 'female'
  			redirect_to female_path
  		end
  	else
  		flash[:alert] = "Failed login. Try again."
  		render :new
  	end
  	
  end

  def destroy
  end
end
