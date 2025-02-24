class Lesson < ApplicationRecord
  include ActiveModel::Serialization
  validates :coach_id, presence: true

  belongs_to :coach, foreign_key: "coach_id"
  belongs_to :student, foreign_key: "student_id", optional: true
end
