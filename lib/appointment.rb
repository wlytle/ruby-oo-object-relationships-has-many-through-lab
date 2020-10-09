class Appointment

    @@all = []

    def self.all
        @@all
    end

    attr_reader :doctor, :patient

    def initialize(date, patient, doctor)
        @date, @patient, @doctor = date, patient, doctor
        @@all << self
    end


end