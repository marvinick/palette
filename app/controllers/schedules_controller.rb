class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update]

  def index
    @schedules = Schedule.all
  end

  def new
    @employees = Employee.all
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      flash[:notice] = "Your new schedule was saved"
      redirect_to new_schedule_path
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update

  end

  private

  def schedule_params
    params.require(:schedule).permit(:day, :shift)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
end

