class Appointment
   attr_accessor :date, :doctor, :patient

   def initialize (date, doctor)
     @date = date
     @doctor = doctor
     @patient = nil   # oops - object can be created without a patient!  Not like the real world where all appointments would have patient
     doctor.add_appointment(self)
   end

end
