class UsersController < ApplicationController
  def show
    @user = current_user
    @company = Company.find(current_user.company_id)
  end
end
