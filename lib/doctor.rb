require 'pry'

class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def appointments 
    Appointment.all.select do |apt|
      apt.doctor == self 
    end
  end 

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
      binding.pry 
    end
  end
end

