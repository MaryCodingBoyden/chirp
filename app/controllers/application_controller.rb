class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_perameters, if :devise_controller?

    private

    def configure_permitted_perameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
end
