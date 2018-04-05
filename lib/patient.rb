require "pry"
class Patient
  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment (appointment)
    binding.pry
    appointment.patient = self
    appointments << appointment
  end

end
