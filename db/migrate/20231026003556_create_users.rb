class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null:false
      t.integer :dni, null:false
      t.string :password_digest, null:false
      t.string :nombre
      t.string :apellido
      t.string :rol
      
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :dni, unique: true
  end
end
