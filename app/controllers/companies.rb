class companies < ApplicationController
  
  def new
    @company = Company.new
  end

  def create
    companies = companies.create name: params[:name]
    redirect_to "/restaurants"
  end

end
