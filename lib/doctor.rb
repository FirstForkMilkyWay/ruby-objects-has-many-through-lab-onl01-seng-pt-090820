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
  Appointment.new
end 


end 