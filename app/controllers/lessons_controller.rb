require 'pry'

class LessonsController < ApplicationController
  def available_lessons
    lessons = Lesson.where(student_id: nil)
    if lessons
      render json: lessons, each_serializer: LessonSerializer
    else 
      render json: lessons.errors
    end
  end

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
    lesson = Lesson.find(lesson_params[:id])
    if lesson
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
