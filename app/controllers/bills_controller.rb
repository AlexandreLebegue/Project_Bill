class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
    @bills = Bill.all
  end

  def new
    @bill= Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.save
    redirect_to "/bills/show"
  end


  private
  def bill_params
    params.require(:bill).permit(:comment)
  end
end
