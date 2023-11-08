class CreateVacunas < ActiveRecord::Migration[7.1]
  def change
    create_table :vacunas do |t|
      t.string :nombre
      t.date :fecha

      t.timestamps
    end
  end
end
