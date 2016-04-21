class CreatePrinces < ActiveRecord::Migration
  def change
    create_table :princes do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
