class User < ApplicationRecord
  has_secure_password
  
  has_many :turno, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :dog , dependent: :destroy
  after_create :set_profile


  validates :email, presence: true, uniqueness: true,
  format: { with: /\A([\w+-].?)+@[a-z\d-]+(.[a-z]+)*.[a-z]+\z/i,
    message: "formato del mail invalido"
  }

  validates :dni, 
  presence: true,
  uniqueness: true,
  format: {
    with: /\A[0-9]+\z/,
    message: "debe tener solo números"
  }

  validates :password, presence: true

  validates :nombre, presence: true

  validates :apellido, presence: true
  
  validates :rol, presence: true

  validates_format_of :nombre, with: /\A[A-Za-z\s]+\z/, message: "solo se permiten letras y espacios"
  validates_format_of :apellido, with: /\A[A-Za-z\s]+\z/, message: "solo se permiten letras y espacios"

  before_save :downcase_attributes

  private
  def set_profile
    @profile = Profile.new
  end
  def downcase_attributes
      self.email = email.downcase
  end
end