class PetitionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @petition = current_user.petitions.new(medicine_id: params[:medicine_id], pharmacy_id: params[:pharmacy_id] , status: false)
    if @petition.save
      redirect_to :back, notice: "Petición en progreso"
    else
      redirect_to :back, alert: "Hubo un error, inténtelo mas tarde"
    end
  end

  def update
    if @petition = Petition.find(params[:id]).update(status: true)
      redirect_to :back
    end
  end
end
