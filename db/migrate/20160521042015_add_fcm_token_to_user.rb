class AddFcmTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :fcm, :string
  end
end
