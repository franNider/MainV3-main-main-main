class AddDogToVacuna < ActiveRecord::Migration[7.1]
  def change
    add_reference :vacunas, :dog, null: false, foreign_key: true
  end
end
