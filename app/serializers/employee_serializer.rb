class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :shifts
end
