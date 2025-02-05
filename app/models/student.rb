class Student < ApplicationRecord
  include ActiveModel::Serialization
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

  has_many :lessons
end
