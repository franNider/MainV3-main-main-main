class RemoveApellidoYNombreFromTurno < ActiveRecord::Migration[7.1]
  def change
    remove_column :turnos, :nombre, :string
    remove_column :turnos, :apellido, :string
  end
end
