class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :all_seat
  before_action :configure_permitted_parameters, if: :devise_controller?

  # load_and_authorize_resource


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/', :alert => exception.message
  end

  private

  def all_seat
    @all_seat = Seat.all
  end

  # protect_from_forgery with: :exception

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up,  keys: [:name])
   devise_parameter_sanitizer.permit(:account_update,  keys: [:name, :avatar])
 end

end
