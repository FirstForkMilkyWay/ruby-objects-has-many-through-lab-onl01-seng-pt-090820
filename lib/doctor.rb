require 'pry'

class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments 
    Appointment.all.select do |apt|
      apt.doctor == self 
    end
  end 

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
  end

def patients
		appointments.map do |appt|
		  appt.patient
		  binding.pry 
		end 
	end


end

