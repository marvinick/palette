class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show, :destroy]

  def index
    @employees = Employee.order(:updated_at)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      session[:employee_id] = @employee.id
      flash[:notice] = "You are registered"
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
      redirect_to posts_path(@posts)
    else
      render :edit
    end
  end


  private

  def employee_params
    params.require(:employee).permit(:name, :password)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end


end