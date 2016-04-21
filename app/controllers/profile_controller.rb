class ProfileController < ApplicationController
  before_action :authenticate_pharmacy!, only:[:pharmacy]
  before_action :authenticate_user!, only:[:user]

  def pharmacy
    @medicines = Medicine.all
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
