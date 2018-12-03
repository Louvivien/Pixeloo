class ApplicationController < ActionController::Base
	include CurrentCart
	before_action :set_cart
	before_action :authenticate_user!

end
