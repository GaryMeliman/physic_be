class API::V1::ProfileController < Api::V1::BaseController
  # before_action :authenticate_user!
  def user
    @petitions = User.find(params[:id]).petitions
    respond_to do |format|
      format.json { render partail: "partials/petitions" }
    end
  end
end
