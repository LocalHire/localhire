class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private

        def user_not_authorized(exception)
            
            #puts exception.query # edit?
            policy_name = exception.policy.class.to_s.underscore #item_policy

            respond_to do |format|
                format.html { redirect_to items_url, notice: "Sorry, you are not authorized to edit or delete this item."}
                format.json { head :no_content }
            end

            # flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
            # redirect_to(request.referrer || root_path)
        end
    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:first_name, :email) }
    #   end


    #   def configure_permitted_parameters
    #     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email) }
    #   end

#     before_action :configure_permitted_parameters, if: :devise_controller?

# protected

# def configure_permitted_parameters
#   devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password1,:password2,:title,:phone, :first_name , :last_name])
# end

 end


  