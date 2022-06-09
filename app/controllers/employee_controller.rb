class EmployeeController < ApplicationController
  def index
    if params[:sort_by][:first_name]
    employees = Employee.all.order_by(:first_name)
    render json: employees
    elsif params[:sort_by][:last_name]
      employees = Employee.all.order_by(:last_name)
      render json: employees
    end    
end
