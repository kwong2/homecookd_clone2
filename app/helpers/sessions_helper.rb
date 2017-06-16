module SessionsHelper
	def current_user
		session[:user_session] ? User.find(session[:user_session]["id"]) : nil
	end
end
