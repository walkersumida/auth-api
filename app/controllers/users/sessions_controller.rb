class Users::SessionsController < DeviseTokenAuth::SessionsController
  skip_before_filter :verify_authenticity_token, only: [:destroy]

  def destroy
    super
  end
end
