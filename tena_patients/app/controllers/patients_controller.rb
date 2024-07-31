class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

  # GET /patients or /patients.json
  def index
    @patients = TenaDcms::Patient.all
  end

  # GET /patients/1 or /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = TenaDcms::Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # In your create method, log the errors if saving fails
  def create
    @patient = TenaDcms::Patient.new(patient_params)

    if @patient.save
      respond_to do |format|
        format.html { redirect_to patient_url(@patient), notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      end
    else
      Rails.logger.error("Patient save failed: #{@patient.errors.full_messages.join(', ')}")
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_url(@patient), notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = TenaDcms::Patient.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :mobile_number, :email, :gender, :doctor_id)
  end
end
