class HomeController < ApplicationController
  def index
  end

  def search
    @medicine = Medicine.find(params[:id])
    @prince = Prince.find(@medicine.prince_id)
  end

  def type_ahead
    query = params[:q]
    @medicine_links = Medicine.where("nombre LIKE ? ", query.to_s+"%" ).take(5)
    respond_to do |format|
      format.js
    end
  end
end
