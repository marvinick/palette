class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_employee, :logged_in?

  def current_employee
    @current_employee ||= Employee.find(session[:employee_id]) if session[:employee_id]
  end

  def logged_in?
    !!current_employee
  end

  def require_employee
    if !logged_in?
      flash[:error] = 'You need to log in '
      redirect_to root_path
    end
  end

end