class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session

	include CurrentCart
	before_action :set_cart
	before_action :authenticate_user!

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
		devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar, :address, :username, :first_name, :last_name, :phone, :description])
	end

	
end
