# class Doctor
#     @@all = []
#     attr_accessor :name
#     def initialize(name)
#       self.name = name
#       self.class.all.push(self)
#     end
 
#     def new_appointment(date, patient)
#       Appointment.new(date, patient, self)
#     end
 
#     def appointments
#       Appointment.all.select do |appointment|
#         appointment.doctor == self
#       end
#     end
 
#     def patients
#       appointments.collect do |appointment|
#         appointment.patient
#       end
#     end
 
#     def self.all
#       @@all
#     end
# end
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


    def new_appointment(date, patient)
      Appointment.new(date, patient, self)
    end

    def appointments
      Appointment.all.select {|apt| apt.doctor == self}
    end

    def patients
      appointments.map do |appointment| 
        appointment.patient 
      end
    end

end  