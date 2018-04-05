require "pry"
class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize (name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment (appointment)
#    binding.pry
    doctors.index(appointment.doctor) || doctors << appointment.doctor
    appointment.patient = self
    appointments << appointment
  end

end
