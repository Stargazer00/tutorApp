class TutorsController < ApplicationController
	before_action :set_tutor, only: [:show, :edit, :destroy]

	def new
		@tutor = Tutor.new
	end

	def create
		@tutor = Tutor.new(tutor_params)

		if @tutor.save
			flash[:notice] = "You have successfully signed up as a Smart Tutor!"
			log_in @tutor
			redirect_to tutor_path(@tutor)
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def destroy
	end

	private

		def tutor_params
			params.require(:tutor).permit(:name, :email, :password, :password_confirmation)
		end

		def set_tutor
			@tutor = Tutor.find(params[:id])
		end

end

