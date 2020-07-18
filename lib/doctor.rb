class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end


# describe '#patients' do
#     it 'has many patients, through appointments' do
#       doctor_who = Doctor.new('The Doctor')
#       hevydevy = Patient.new('Devin Townsend')
#       doctor_who.new_appointment('Friday, January 32nd', hevydevy)

#       expect(doctor_who.patients).to include(hevydevy)
# def genres
#     songs.map do |song|
#       song.genre
#     end
#   end
# end