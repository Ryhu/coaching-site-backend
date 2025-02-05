class StudentsController < ApplicationController

  # def index
  # end

  # def create
  # end

  # def show
  # end

  # def destroy
  # end

  def lessons
    lessons = Lesson.where(student_id: student_params[:id])
    render json: lessons
  end


  private

  def student_params
    params.permit(:first_name, :last_name, :id, :title. :phone)
  end


end
