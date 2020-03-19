require 'pry'
class Doctor
  
  attr_accessor :name, :appointment, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
  end
end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def patients
    ##binding.pry
    Appointment.all.map do |appt|
      appt.patient
    end
  end
  
end