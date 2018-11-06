class ApplicationController < ActionController::Base
    include Pundit

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:first_name, :email) }
    #   end


    #   def configure_permitted_parameters
    #     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email) }
    #   end

    before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password1,:password2,:title,:phone, :first_name , :last_name])
end

end
