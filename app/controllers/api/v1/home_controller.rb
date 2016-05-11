class API::V1::HomeController < Api::V1::BaseController
  def search
    @medicine = Medicine.find(params[:id])
    @prince = Prince.joins(:medicines).find(@medicine.prince_id)
    render @prince
  end
  def medicine_search
    @medicines = Medicine.where("nombre LIKE ? ","%" + params[:query].to_s + "%" )
    render :file => "medicines.json.erb", :content_type => "application/json" 
  end
  def search_abavilities
    @abavilities = Abavility.includes(:pharmacy).where(medicine_id: params[:id])
    render @abavilities
  end
end
