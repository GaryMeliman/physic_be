class PetitionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @petition = current_user.petitions.new(medicine_id: params[:medicine_id], pharmacy_id: params[:pharmacy_id] )
    if @petition.save
      render js
    else

    end
  end
end
