class API::V1::ProfileController < Api::V1::BaseController
  #before_action :authenticate_user!
  def user
    @petitions = Petition.first
    render @petitions
  end
end
