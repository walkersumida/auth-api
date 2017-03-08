class HomeController < AuthenticatedController
  def index
    render json: {
             result: 'OK',
             user: current_user.to_json
           }
  end
end
