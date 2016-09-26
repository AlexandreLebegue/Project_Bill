class BillItemsController < ApplicationController

  def index
    @item = []
    Bill_item.all.each do |b|
        @item.push(b)
      end
  end

  def add_items
    @item = []
    Bill_item.all.each do |b|
        @item.push(b)
      end
  end

  def destroy
    Bill_item.last.destroy
    redirect_to (:back)
  end


  def new
    @item= Bill_item.new
  end

  def create
    @item = Bill_item.new(item_params)
    @item.save
    redirect_to (:back)
  end

  def add_item_in_bill
    @item = Bill_item.new(item_params, )
    @item.save
    redirect_to (:back)
  end

  private
  def item_params
    params.require(:bill_item).permit(:reference, :label, :price)
  end

end
