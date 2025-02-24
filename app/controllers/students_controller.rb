class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  # def create
  # end

  def show
    student = Student.find!(lesson_params[:id])
      render json: lesson
  end

  # def destroy
  # end

  def lessons
    lessons = Lesson.where(student_id: student_params[:id])
    render json: lessons
  end


  private

  def student_params
    params.permit(:first_name, :last_name, :id, :title, :phone)
  end


end
