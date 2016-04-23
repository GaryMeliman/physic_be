class Medicine < ActiveRecord::Base
  has_many :abavilities
  has_many :pharmacies, through: :abavilities
  has_many :petitions
  belongs_to :prince

  def nombre_con_cantidad
    "#{nombre}, #{cantidad}"
  end
end
