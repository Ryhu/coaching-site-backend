class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  # def create
  # end

  # def show
  #   student = Student.find!(lesson_params[:id])
  #     render json: student
  # end

  # def destroy
  # end

  def lessons
    lessons = Lesson.where(student_id: student_params[:id])
    enrollable_lessons = Lesson.where('student_id IS NULL')

    render json: {
      lessons: ActiveModel::Serializer::CollectionSerializer.new(lessons, each_serializer: LessonSerializer),
      enrollable_lessons: ActiveModel::Serializer::CollectionSerializer.new(enrollable_lessons, each_serializer: LessonSerializer),
   }
  end

  def enrollable_lessons
    lessons = Lesson.where('student_id IS NULL')
    if lessons
      render json: lessons, each_serializer: LessonSerializer
    else 
      render json: lessons.errors
    end
  end

  # Lesson.where('CAST(date AS DATE) < CAST(date() AS DATE)')

  private

  def student_params
    params.permit(:first_name, :last_name, :id, :title, :phone)
  end


end
