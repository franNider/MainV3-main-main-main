class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.integer :dni
      t.string :password
      t.references :user, null: false, foreign_key: true
      t.references :perro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
