class CasesController < ApplicationController
  before_action :set_student

  def new
    @case = @student.cases.build
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_student
      @student = Student.find(params[:student_id])
    end

    def case_params
      params.require(:case).permit(:categories, :Level_genearl, :level_oral, :level_music,
                                  :level_other, :subject_general, :subject_oral, :subject_music,
                                  :subject_other, :no_of_student, :freq_of_lesson, :lesson_time,
                                  :tuition_fee, :tuition_per, :min_edu_level, :tutor_gender, 
                                  :other_info)
    end
end
