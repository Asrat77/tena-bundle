class LabTechniciansController < ApplicationController
  before_action :set_lab_technician, only: %i[ show edit update destroy ]

  # GET /lab_technicians or /lab_technicians.json
  def index
    @lab_technicians = TenaDcms::LabTechnician.all
  end

  # GET /lab_technicians/1 or /lab_technicians/1.json
  def show
  end

  # GET /lab_technicians/new
  def new
    @lab_technician = TenaDcms::LabTechnician.new
  end

  # GET /lab_technicians/1/edit
  def edit
  end

  # POST /lab_technicians or /lab_technicians.json
  def create
    @lab_technician = TenaDcms::LabTechnician.new(lab_technician_params)

    respond_to do |format|
      if @lab_technician.save
        format.html { redirect_to lab_technician_url(@lab_technician), notice: "Lab technician was successfully created." }
        format.json { render :show, status: :created, location: @lab_technician }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lab_technician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_technicians/1 or /lab_technicians/1.json
  def update
    respond_to do |format|
      if @lab_technician.update(lab_technician_params)
        format.html { redirect_to lab_technician_url(@lab_technician), notice: "Lab technician was successfully updated." }
        format.json { render :show, status: :ok, location: @lab_technician }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lab_technician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_technicians/1 or /lab_technicians/1.json
  def destroy
    @lab_technician.destroy!

    respond_to do |format|
      format.html { redirect_to lab_technicians_url, notice: "Lab technician was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_technician
      @lab_technician = TenaDcms::LabTechnician.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lab_technician_params
      params.require(:lab_technician).permit(:name, :contact_info)
    end
end
