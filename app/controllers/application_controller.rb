class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user! 
  # before_action :admin_only
  protect_from_forgery with: :exception

  private
    def admin_only
      if current_user
        puts "kachon #{current_user.admin?}"
        if !current_user.admin?
          redirect_to destroy_user_session_path
        end
      end
    end
end
