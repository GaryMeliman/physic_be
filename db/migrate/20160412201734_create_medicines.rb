class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :nombre
      t.string :cantidad
      t.text :indicaciones
      t.string :laboratorio
      t.string :composicion
      t.text :posologia
      t.text :detalle
      t.string :efectos_colaterales
      t.string :contraendicaciones
      t.string :observaciones

      t.timestamps null: false
    end
  end
end
