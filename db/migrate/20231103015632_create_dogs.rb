class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :nombre
      t.string :raza
      t.string :sexo
      t.string :color
      t.integer :edad
      t.float :peso

      t.timestamps
    end
  end
end
