class CreateChequeos < ActiveRecord::Migration[7.1]
  def change
    create_table :chequeos do |t|
      t.string :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
