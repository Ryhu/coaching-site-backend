class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :notes, :score, :coach_id, :student_id, :date, :time

  belongs_to :coach
  belongs_to :student, optional: true
end