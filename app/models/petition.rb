class Petition < ActiveRecord::Base
  belongs_to :user
  belongs_to :pharmacy
  belongs_to :medicine

  validates :medicine_id, uniqueness: { scope: :user_id }
end
