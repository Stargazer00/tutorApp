class StudentsController < ApplicationController

	before_action :set_student, except: [:new, :create]

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			flash[:notice] = "成功註冊"
			redirect_to student_path(@student)
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @student.update_attributes(student_params)
			flash[:success] = "Profile updated"
			redirect_to @student
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

		def student_params
			params.require(:student).permit(:name, :email, :password, :password_confirmation, :contact_name, :mobile_no, :relation, :district, :address)
		end

		def set_student
			@student = Student.find(params[:id])
		end
end
