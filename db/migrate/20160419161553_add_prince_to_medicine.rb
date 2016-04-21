class AddPrinceToMedicine < ActiveRecord::Migration
  def change
    add_reference :medicines, :prince, index: true, foreign_key: true
  end
end
