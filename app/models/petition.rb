class Petition < ActiveRecord::Base
  require 'fcm'
  belongs_to :user
  belongs_to :pharmacy
  belongs_to :medicine
 
  before_create do
    self.status = false
    nil
  end
  after_update do
    fcm = FCM.new("AIzaSyDIiaIOSKlEI0Ekzrsy8fyTrlTAaQtRPbw")
    registration_id = [self.user.fcm]
    options = {data: "Su cotización ha sido aceptada, medicamento: "+self.medicine.nombre + ", precio: " + self.price.to_s }
    response = fcm.send(registration_id,options)
    nil
  end

  validates :medicine_id, uniqueness: { scope: :user_id }
end
