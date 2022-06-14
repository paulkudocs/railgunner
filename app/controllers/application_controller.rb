class ApplicationController < ActionController::API 
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected 

    def current_token 
        request.env['warden-jwt_auth.token']
    end 

    def configure_permitted_parameters 
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation]) 
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password]) 
        devise_parameter_santizer.permit(:sign_in, keys: [:name, :email, :password, :password_confirmation])
    end
end
