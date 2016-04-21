class CreateAbavilities < ActiveRecord::Migration
  def change
    create_table :abavilities do |t|
      t.references :pharmacy, index: true, foreign_key: true
      t.references :medicine, index: true, foreign_key: true
      t.boolean :stock
      t.decimal :price

      t.timestamps null: false
    end
  end
end
