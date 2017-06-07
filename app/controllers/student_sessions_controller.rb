class StudentSessionsController < ApplicationController

	def new
	end

	def create
		student = Student.find_by(name: params[:session][:name])
		if student && student.authenticate(params[:session][:password])
			log_in student
			redirect_to student_path(student)
		else
			flash[:danger] = "Invalid email/password combination"
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def destroy
		log_out
		redirect_to root_url
	end

	private

		def set_param
			params.require(:session).permit(:name, :password)
		end

end
