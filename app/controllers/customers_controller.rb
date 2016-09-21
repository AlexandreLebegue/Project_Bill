class CustomersController < ApplicationController

  def new
    @customer= Customer.new
    @companies = Company.all    
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to "/bills/new"
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :code, :address_id, :gender, :company_id)
  end

end
