class CompaniesController < ApplicationController
  def index
  end


  def new
    @company = Company.new
  end

  def create
    @company = Company.new params[:name]
    @company.name = params[:name]
    @company.siret_number = params[:siret_number]
    @company.phone_number = params[:phone_number]
    @company.address_id = params[:address_id]
    @company.save
  end


end
