class Appointment
  attr_accessor :date, :doctor, :patients

  @@all = []

  def initialize(date, patients, doctor)
    @date = date
    @doctor = doctor
    @patients = patients
    @@all << self
  end

  def self.all
    @@all
  end
end