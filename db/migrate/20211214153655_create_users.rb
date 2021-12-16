class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :telefono
      t.string :email
      t.string :contraseña

      t.timestamps
    end
  end
end
