class StudentSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :id, :phone
end