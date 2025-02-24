require 'pry'

class LessonsController < ApplicationController
  def create
    lesson = Lesson.create!(lesson_params)
    
    if lesson
      render json: lesson
    else 
      render json: lesson.errors
    end
  end

  def update
    # students enrolling and coach grading
    lesson = Lesson.find(params[:id])
    
    if lesson.update!(lesson_params)
      render json: lesson
    else 
      render json: lesson.errors
    end
  end

  # def show
  # end

  # def destroy
  # end

  # def lessons
  #   lessons = Lesson.where(coach_id: lesson_params[:id])
  #   render json: lessons
  # end


  private

  def lesson_params
    params.require(:lesson).permit(:id, :title, :description, :notes, :score, :coach_id, :student_id, :date, :time)
  end
end
