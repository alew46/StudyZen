class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  google_signin = "pages/googleallow.html.erb"

  def after_sign_up_path_for(google_signin)
    user_path(google_signin)
  end

end
