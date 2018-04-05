class Appointment
  # not providing writer for doctor.  If we did, it would be custom
  # so that appointment can be removed from previous doctor and then added to new doctor
   attr_reader :date, :doctor
   attr_writer :patient, :date

   def initialize (date, doctor)
     @date = date
     @doctor = doctor
     @patient = nil   # oops - object can be created without a patient!  Not like the real world where all appointments would have patient
     doctor.add_appointment(self)
   end

end
