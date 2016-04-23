class Petition < ActiveRecord::Base
  belongs_to :user
  belongs_to :pharmacy
  belongs_to :medicine
  before_create :set_status

private
  def set_status
    status = false
  end
end
