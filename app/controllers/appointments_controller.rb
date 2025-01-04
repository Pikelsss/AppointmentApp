class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = current_user.appointments
    @new_appointment_id = params[:new_appointment_id] if params[:new_appointment_id]
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = current_user.appointments.build(appointment_params)
    if @appointment.save
      redirect_to appointments_path(new_appointment_id: @appointment.id), notice: 'Appointment was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointments_path, notice: 'Appointment was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path, notice: 'Appointment was successfully deleted.'
  end

  private

  def set_appointment
    @appointment = current_user.appointments.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:title, :description, :start_date, :end_date)
  end
end