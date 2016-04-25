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

  def near
    @pharmacies = Pharmacy.all
    @hash = Gmaps4rails.build_markers(@pharmacies) do |pharmacy, marker|
      marker.lat pharmacy.lat
      marker.lng pharmacy.lng
      marker.infowindow pharmacy.nombre + "<br>" + pharmacy.ubicacion
    end
  end
  def show_map
    @pharmacy = Pharmacy.find(params[:id])
  end
end
