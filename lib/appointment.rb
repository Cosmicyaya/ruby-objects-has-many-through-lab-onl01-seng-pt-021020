class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def patients
    self.patient
  end
  
  def doctors
  doctor.all.select do |doctor|
    doctor.patient == self
  end
end