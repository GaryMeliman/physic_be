class API::V1::ProfileController < Api::V1::BaseController
  before_action :authenticate_user!
  def user
    @petitions = current_user.petitions
    respond_to do |format|
      format.json { render partail: "partials/petitions" }
    end
  end
end
