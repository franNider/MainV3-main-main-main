class AddDogToChequeo < ActiveRecord::Migration[7.1]
  def change
    add_reference :chequeos, :dog, null: false, foreign_key: true
  end
end
