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
end


  