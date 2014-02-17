class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:notice] = "Your employee has been added"
    else
      render :new
    end
  end

  def show
  end


  private

  def employee_params
    params.require(:employee).permit(:name, :title, :description)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end