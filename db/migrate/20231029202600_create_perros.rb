class CreatePerros < ActiveRecord::Migration[7.1]
  def change
    create_table :perros do |t|
      t.string :nombre
      t.string :raza
      t.string :sexo
      t.string :color
      t.float :peso
      t.integer :edad

      t.timestamps
    end
  end
end
