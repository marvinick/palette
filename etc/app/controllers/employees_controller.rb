class EmployeesController < ApplicationController

  def index
    @employees = Employee.order(:updated_at)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:notice] = "You just added a new employee"
      redirect_to employees_path
    else
      render :form
    end
  end

  def edit
  end

  def update
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :title, :description)
  end
end