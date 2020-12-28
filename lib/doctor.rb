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
      Appointment.all.select { |appointment| appointment.doctor == self }
    end
  
    def patients
      appointments.map(&:patient)
    end
  end


#     def new_song(name, genre)
#       Song.new(name, self, genre)
#     end
  
#     def songs
#       Song.all.select { |song| song.artist == self }
#     end
  
#     def genres
#       songs.map(&:genre)
#     end
#   end