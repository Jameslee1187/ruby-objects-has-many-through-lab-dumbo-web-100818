class Doctor
  attr_reader :name

  @@doctors= []

  def initialize(name)
    @name = name
    @@doctors.push(self)
  end

  def self.all
    @@doctors
  end

def appointments
  Appointment.all.select {|appointment| appointment.doctor == self}

end

def new_appointment(date, patient)
  Appointment.new(date, self, patient)
end

def patients
appointments.map {|appointment| appointment.patient}
end

end
