class Petition < ActiveRecord::Base
  require 'fcm'
  belongs_to :user
  belongs_to :pharmacy
  belongs_to :medicine
 
  before_create do
    self.status = false
    nil
  end
  before_update do
    fcm = FCM.new("AIzaSyDIiaIOSKlEI0Ekzrsy8fyTrlTAaQtRPbw")
    registration_id = ["1"]
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send(registration_id,options)
    nil
  end

  validates :medicine_id, uniqueness: { scope: :user_id }
end
