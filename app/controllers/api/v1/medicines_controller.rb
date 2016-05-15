class API::V1::MedicinesController < API::V1::BaseController
  def show
    @Medicine = Medicine.find(params[:id])
    render json: @medicine.to_json
  end
end
