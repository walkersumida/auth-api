class UserController < AuthenticatedController
  def show
    render json: { profile: current_user }
  end
end
