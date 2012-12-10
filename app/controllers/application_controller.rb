class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end
