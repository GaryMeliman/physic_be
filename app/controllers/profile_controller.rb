class ProfileController < ApplicationController
  before_action :authenticate_pharmacy!, only:[:pharmacy]
  before_action :authenticate_user!, only:[:user]

  def pharmacy
    @myMedicines = current_pharmacy.abavilities
    ids = @myMedicines.pluck(:medicine_id)
    @medicines = Medicine.where.not(id: ids)
    @abavilities = Abavility.new
  end

  def add_abavility

  end

  def user

  end

private
  def abavilities_params
    params.require(:medicines)
  end
end
