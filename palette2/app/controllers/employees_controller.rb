class EmployeesController < ApplicationController

  def index
    @employee = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
  end


  private

  def employee_params
    params.require(:employee).permit(:name, :title, :description)
  end


end