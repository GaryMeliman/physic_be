class API::V1::ProfileController < Api::V1::BaseController
  before_action :authenticate_user!
  def user
    @petitions = current_user.petitions.joins(:medicine)
    render @petitions
  end
end
