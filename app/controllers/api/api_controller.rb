class API::APIController < ActionController::Base
  protect_from_forgery with: :null_session
end
