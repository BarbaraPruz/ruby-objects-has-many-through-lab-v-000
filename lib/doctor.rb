require "pry"
class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize (name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment (appointment)
    binding.pry
    appointment.doctor = self   # just to make sure that all my appointments list me a Dr
    appointments.index(appointment) || appointments << appointment
    patients.index(appointment.patient).uniq! if appointment.patient != nil
  end

end
