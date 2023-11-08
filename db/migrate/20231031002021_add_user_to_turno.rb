class AddUserToTurno < ActiveRecord::Migration[7.1]
  def change
    add_reference :turnos, :user, null: false, foreign_key: true
  end
end
