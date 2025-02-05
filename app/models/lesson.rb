class Lesson < ApplicationRecord
  include ActiveModel::Serialization
  validates :first_name, presence: true

  belongs_to :coach, foreign_key: "coachId"
  belongs_to :student, foreign_key: "studentId", optional: true
end
