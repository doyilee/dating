class SessionsController < ApplicationController
  def new

  end

  def create
  	@user = User.where(username: params[:username]).first
  	if @user.present? && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		flash[:notice] = "You have logged in."
  		redirect_to ''
  	else
  		flash[:alert] = "Failed login. Try again."
  		render :new
  	end
  end

  def destroy
  end
end
