class ApplicationController < ActionController::Base
    def authenticate_user
        unless user_signed_in?
            redirect_to new_user_session_path, notice: "You're not logged in."
        end
    end
end 