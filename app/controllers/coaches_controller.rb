class CoachesController < ApplicationController

  def index
    coaches = Coach.all
    render json: coaches
  end

  # def create
  # end

  def show
    coach = Coach.find!(lesson_params[:id])
      render json: lesson
  end

  # def destroy
  # end

  def lessons
    lessons = Lesson.where(coach_id: coach_params[:id])
    render json: lessons
  end

  private

  def coach_params
    params.permit(:first_name, :last_name, :id, :title, :phone)
  end


end
