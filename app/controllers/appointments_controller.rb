class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointment, only: [:edit, :update, :delete]

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = current_user.appointments.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to appointments_path, alert: 'Appointment not found.'
  end
  
  

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = current_user.appointments.build(appointment_params)
    if @appointment.save
      redirect_to @appointment, notice: 'Appointment was successfully created.'
    else
      flash.now[:alert] = 'Error creating appointment.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to @appointment, notice: 'Appointment was successfully updated.'
    else
      flash.now[:alert] = 'Error updating appointment.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = current_user.appointments.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path, notice: 'Appointment was successfully deleted.'
  end

  private

  def set_appointment
    @appointment = current_user.appointments.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to appointments_path, alert: 'Appointment not found.'
  end

  def appointment_params
    params.require(:appointment).permit(:title, :description, :start_date, :end_date)
  end
end
