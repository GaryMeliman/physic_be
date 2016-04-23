class AbavilitiesController < ApplicationController
  before_action :abavility_params
  def create
    @abavility = current_pharmacy.abavilities.new(abavility_params)
    respond_to do |format|
      if @abavility.save
        format.js { render @abavility }
      else

      end
    end
  end
  def update

  end
private
  def abavility_params
    params.require(:abavility).permit(:medicine_id,:stock,:price)
  end
end
