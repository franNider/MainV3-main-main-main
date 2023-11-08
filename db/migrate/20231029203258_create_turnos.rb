class CreateTurnos < ActiveRecord::Migration[7.1]
  def change
    create_table :turnos do |t|
      t.string :estado
      t.string :nombre
      t.string :apellido
      t.string :motivo
      t.datetime :fecha
      
      t.timestamps
    end
  end
end
