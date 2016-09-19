class CompaniesController < ApplicationController

  def new
    @company= Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save
    redirect_to "/customers/new"
  end

  private
  def company_params
    params.require(:company).permit(:name, :phone_number, :siret_number, :address_id)
  end

end
