class SessionsController < ApplicationController
  def new
  end

  def create 
  	  user = User.find_by(username: params[:session][:username].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def log_in(user)
  	redirect_to root_url
  end
  def destroy
  	log_out
  	redirect_to root_url
  end
end
