require "pry"
class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize (name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment (appointment)
  #  binding.pry
    appointment.doctor = self   # just to make sure that all my appointments list me a Dr
    appointments.index(appointment) || appointments << appointment
    add_patient(appointment.patient) if appointment.patient != nil
  end

  def add_patient(patient)
    patients.index(patient) || patients << patient
  end
end
