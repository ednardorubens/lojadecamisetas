require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  protect_from_forgery with: :exception

  LIMIT_REGISTRY = 50

  respond_to :html, :json
  responders :flash, :http_cache
  before_action :verify_requested_format!
end
