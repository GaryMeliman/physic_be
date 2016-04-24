class API::V1::HomeController < Api::V1::BaseController
  def search
    @medicine = Medicine.find(params[:id])
    @prince = Prince.joins(:medicines).find(@medicine.prince_id)
    render @prince
  end
  def medicine_search
    @medicines = Medicine.where("nombre LIKE ? ","%" + params[:query].to_s + "%" ).take(5)
    render json: @medicines.to_json
  end
end
