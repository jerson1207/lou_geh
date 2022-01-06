class SoldItemsController < ApplicationController
  def index
    @sale_transaction = SaleTransaction.find(params[:sale_transaction_id])
    
  end

  def create
    @sale_transaction = SaleTransaction.find(params[:sale_transaction_id])
    @sold_item = @sale_transaction.sold_items.new(sold_item_params)
    if @sold_item.save
      @total = ItemInventory.find(@sold_item.product_id)
      @total.quantity = @total.quantity - @sold_item.quantity
      @total.save
      redirect_to sale_transaction_path( @sale_transaction)
    end
   
 
  end

  def destroy    
    @sale_transaction = SaleTransaction.find(params[:id])
    @sold_item = @sale_transaction.sold_items.find(params[:sale_transaction_id])
    if @sold_item.destroy
      @total = ItemInventory.find(@sold_item.product_id)
      @total.quantity = @total.quantity + @sold_item.quantity
      @total.save

     redirect_to sale_transaction_path(@sale_transaction)
    end
  end

  private
    def sold_item_params
      params.require(:sold_item).permit(:product_id, :quantity, :price_per_unit)
    end
end
