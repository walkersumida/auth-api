class Users::OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController

  # intermediary route for successful omniauth authentication. omniauth does
  # not support multiple models, so we must resort to this terrible hack.
  def redirect_callbacks
    # derive target redirect route from 'resource_class' param, which was set
    # before authentication.
    devise_mapping = [request.env['omniauth.params']['namespace_name'],
                      request.env['omniauth.params']['resource_class'].underscore.gsub('/', '_')].compact.join('_')
    path = "#{Devise.mappings[devise_mapping.to_sym].fullpath}/#{params[:provider]}/callback"
    redirect_route = Object.const_get("URI::#{request.scheme.upcase}")
                           .build(scheme: request.scheme, host: request.host, port: request.port, path: path).to_s

    # preserve omniauth info for success route. ignore 'extra' in twitter
    # auth response to avoid CookieOverflow.
    session['dta.omniauth.auth'] = request.env['omniauth.auth'].except('extra')
    session['dta.omniauth.params'] = request.env['omniauth.params']

    redirect_to redirect_route
  end
end
