class SessionsController < ApplicationController
  def new
  end

  def create 
     # here you take username and password input to look for user if exists 
    # then create session
  	  @user = User.find_by(username: params[:session][:username].downcase)
  	if @user && @user.authenticate(params[:session][:password])
  		log_in @user
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def log_in(user)
    session[:user_session] = user
  	redirect_to root_url
  end

  def destroy
  	log_out
  	# redirect_to root_url
  end

  def log_out
    session.delete(:user_session)
    current_user = nil
    redirect_to '/sessions/new'
  end
end
