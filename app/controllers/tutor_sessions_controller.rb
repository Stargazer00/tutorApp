class TutorSessionsController < ApplicationController
	def new
	end

	def create
		tutor = Tutor.find_by(name: params[:session][:name])
		if tutor && tutor.authenticate(params[:session][:password])
			log_in(tutor)
			redirect_to tutor_path(tutor)
		else
			flash[:danger] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end

	private

		def set_param
			paras.require(:session).permit(:name, :password)
		end
end
