class API::V1::PetitionsController < Api::V1::BaseController
  before_action :authenticate_user!
  
  def index
    @petitions = current_user.first.petitions
  end

  def create
    petition = current_user.petitions.new(pharmacy_id: params[:pharmacy_id], medicine_id: params[:medicine_id])
    if petition.save
      render json: { status: true }.to_json
    else
      render json: { status: false }.to_json
    end
  end
end
