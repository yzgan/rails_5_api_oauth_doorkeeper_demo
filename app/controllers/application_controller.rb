class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include MyApplicationResponder
  respond_to :json
  responders :my_application
end
