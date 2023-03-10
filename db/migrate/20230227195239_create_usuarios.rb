class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :ciudad
      t.string :rol
      t.string :unidad

      t.timestamps
    end
  end
end
