# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  after_action :create_lender, only: [:create]

# ----- GUY
  # after_action :create_account, only: [:create]
  # after_action :create_borrower, only: [:create]

  #then after the above add all of the id's back into the user, 
  #so i would have to figure out the order for all of the after_actions, 
  #so that i make sure that all the id's are where they need to be 
  # so start with account, then filter down - i.e. account, borrower, lender, etc

  #------------ END


  #this is where i would put in other after_actions - such as create account_id, borrower_id and so on

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  def create_lender
    @lender = Lender.new
    @lender.user_id = User.last.id
    @lender.phone = "0400275085" #think we can probably put in user.phone here automatically User.last.id(params[:phone])?
    @lender.save
  end 

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
