class EmployeeController < ApplicationController
  def index
    employees = Employee.all.sort_by
    render json: employees
  end
end
