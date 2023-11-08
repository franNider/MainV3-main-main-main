class Chequeo < ApplicationRecord
    belongs_to :dog
    validates :descripcion, presence: true
    validates :fecha, presence: true

    validate :datetime_not_in_future
    
    validate :chequeo_no_duplicado
    
    private
    def datetime_not_in_future
        if fecha? && fecha > Time.now
          errors.add(:fecha, "no debe ser futura")
        end
    end

    def chequeo_no_duplicado
      if Chequeo.exists?(fecha: self.fecha, descripcion: self.descripcion)
        errors.add(:base, "Chequeo ya cargado")
      end
    end

end
