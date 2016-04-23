class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :pharmacy, index: true, foreign_key: true
      t.references :medicine, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end
