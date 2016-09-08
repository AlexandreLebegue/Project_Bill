class Users::RegistrationsController < Devise::RegistrationsController

 # Because of Rails strong parameter we need to use the Registration controller Override
 # to sanitize inputs
 # Devise automatically knows wich one to use

 private
  def sign_up_params
    params.require(:user).permit( :email, :password,:password_confirmation, :first_name, :last_name,
	company_attributes:[:name])
  end

  def account_update_params
    # For updates we make sure to let the Company ID pass through or the form will
	# generate a new company every time we edit our details

    params.require(:user).permit(:email, :first_name, :last_name,:password, :password_confirmation, :current_password,
	company_attributes: [:id,:name, :siret_number, :phone_number])
  end
end
