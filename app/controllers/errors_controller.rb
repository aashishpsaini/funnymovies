class ErrorsController < ApplicationController
  def index
    raise ActionController::RoutingError, "Unknown route: #{request.url}"
  end
end