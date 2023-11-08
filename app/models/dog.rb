class Dog < ApplicationRecord
    belongs_to :user, default: -> {Current.user}
    has_many :vacuna
    has_many :chequeo

    validates :nombre, presence: true

  validates :raza, presence: true

  validates :sexo, presence: true,
  format: {
    with: /\A[a-z-A-Z]+\z/,
    message: :invalid
  }

  validates :color, presence: true


  validates :peso, presence: true
  
  validates :edad, presence: true,
  format: {
    with: /\A[0-9]+\z/,
    message: "debe tener solo números"
  }

  validates_format_of :nombre, with: /\A[A-Za-z\s]+\z/, message: "solo se permiten letras y espacios"
  validates_format_of :raza, with: /\A[A-Za-z\s]+\z/, message: "solo se permiten letras y espacios"
  validates_format_of :color, with: /\A[A-Za-z\s]+\z/, message: "solo se permiten letras y espacios"
  validates_format_of :peso, with: /\A\d+(\.\d+)?\z/, message: "debe ser un número real"
  validate :unique_name_per_user

  private

  def unique_name_per_user
    if user.dog.where.not(id: self.id).exists?(nombre: nombre)
      errors.add(:nombre, "ya está en uso por otro perro de este usuario")
    end
  end

end
