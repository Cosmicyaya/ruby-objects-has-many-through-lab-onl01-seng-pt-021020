require 'pry'
class Patient
  @@all = []
  
  attr_reader :name, :appointment, :doctor
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
    
    def doctors
      Appointment.each do |appointment|
        appointment.patient == self
      end
    end
  end
end