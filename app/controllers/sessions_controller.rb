class SessionsController < ApplicationController

  def new

  end

  def create
    employee = Employee.where(name: params[:name]).first
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      flash[:notice] = "Welcome aboard"
      redirect_to root_path
    else
      flash[:error] = "There is something wrong, please fix"
      redirect_to login_path
    end
  end

  def destroy
    session[:employee_id] = nil
    flash[:notice] = "You are out!!!!"
    redirect_to root_path
  end
end