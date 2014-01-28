class LineStaffsController < ApplicationController
  before_action :set_line_staff, only: [:show, :edit, :update, :destroy]

  # GET /line_staffs
  # GET /line_staffs.json
  def index
    @line_staffs = LineStaff.all
  end

  # GET /line_staffs/1
  # GET /line_staffs/1.json
  def show
  end

  # GET /line_staffs/new
  def new
    @line_staff = LineStaff.new
  end

  # GET /line_staffs/1/edit
  def edit
  end

  # POST /line_staffs
  # POST /line_staffs.json
  def create
    @line_staff = LineStaff.new(line_staff_params)

    respond_to do |format|
      if @line_staff.save
        format.html { redirect_to @line_staff, notice: 'Line staff was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line_staff }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_staffs/1
  # PATCH/PUT /line_staffs/1.json
  def update
    respond_to do |format|
      if @line_staff.update(line_staff_params)
        format.html { redirect_to @line_staff, notice: 'Line staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_staffs/1
  # DELETE /line_staffs/1.json
  def destroy
    @line_staff.destroy
    respond_to do |format|
      format.html { redirect_to line_staffs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_staff
      @line_staff = LineStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_staff_params
      params.require(:line_staff).permit(:employee_id, :draft_id)
    end
end
