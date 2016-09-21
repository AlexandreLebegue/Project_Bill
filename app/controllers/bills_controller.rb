class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
      @Bill = []
    Bill.all.each do |b|
      if current_user.id == b.user_id
        @Bill.push(b)
      end
    end
  end


  def new
    @bill= Bill.new

    @customers = Customer.all
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.user_id = current_user.id
    @bill.bill_date = Time.now
    @bill.save
    redirect_to "/bills/show"
  end

  def destroy
    Bill.find(params[:id]).destroy
    redirect_to "/bills/show"
  end

  private
  def bill_params
    params.require(:bill).permit(:comment, :pay_method, :customer_id)
  end
end
