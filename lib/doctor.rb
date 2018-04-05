class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize (name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment (appointment)
    appointment.doctor = self
    appointments << appointment

  end

end
