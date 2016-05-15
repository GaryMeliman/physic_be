class AddPriceToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :price, :decimal
  end
end
