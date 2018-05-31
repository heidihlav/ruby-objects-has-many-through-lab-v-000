class Doctor
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self }
  end

  def patients
    Appointment.all.collect {|appt| appt.patient }
  end

end
