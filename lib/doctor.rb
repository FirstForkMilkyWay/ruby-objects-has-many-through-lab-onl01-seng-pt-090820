class Doctor 

attr_accessor :name 

@@all = []

def initialze(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all 
end 

def new_appointment(date,patient)
  Appointment.new(self,date,patient)
end 

def appointments 
  Appointment.all.select do |appt|
    appt.doctor == self 
  end 
end 

def patients 
  appointments.map do |pat|
    pat.patient 
  end 
end 


end 