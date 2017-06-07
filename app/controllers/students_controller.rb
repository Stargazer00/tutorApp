class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			flash[:notice] = "成功註冊"
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def student_params
			params.require(:student).permit(:name, :email, :password, :password_confirmation)
		end

end
