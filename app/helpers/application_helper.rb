module ApplicationHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		@current_user ||= (Tutor.find_by(id: session[:user_id]) || Student.find_by(id: session[:user_id]))
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

	def tutor?
		if @current_user.class == :tutor
			true
		else
			false
		end
	end
end
