class AddPopularToPharmacies < ActiveRecord::Migration
  def change
    add_column :pharmacies, :popular, :boolean
    add_column :pharmacies, :status, :boolean
  end
end
