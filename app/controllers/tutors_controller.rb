class TutorsController < ApplicationController
	def new
		@tutor = Tutor.new
	end

	def create
		@tutor = Tutor.new(tutor_params)

		if @tutor.save
			flash[:notice] = "You have successfully signed up as a Smart Tutor!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def tutor_params
			params.require(:tutor).permit(:name, :email, :password, :password_confirmation)
		end

end

