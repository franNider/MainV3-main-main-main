class Turno < ApplicationRecord
    after_initialize :default_values

    validates :motivo, presence: true

    validates :fecha, presence: true
    
    belongs_to :user, default: -> { Current.user }
    private
    def default_values
      self.estado="A confirmar"
    end
end
