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
    @employee = Employee.create
  end

  def edit
  end

  def update
  end
end