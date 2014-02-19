class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show]

  def index
    @employees = Employee.order(:description)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:notice] = "You have added a new employee"
      redirect_to employees_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
     if @employee.update(employee_params)
      flash[:notice] = "This one has been updated"
      redirect_to employee_path(@employee)
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def employee_params
    params.require(:employee).permit(:name, :title, :description)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end


end