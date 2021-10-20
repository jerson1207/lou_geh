class SoldItemsController < ApplicationController
  def create
    @sale_transaction = SaleTransaction.find(params[:sale_transaction_id])
    @sold_item = @sale_transaction.sold_items.create(sold_item_params)
   
    redirect_to sale_transaction_path( @sale_transaction)
 
  end

  def destroy
    
    @sale_transaction = SaleTransaction.find(params[:id])
    @sold_item = @sale_transaction.sold_items.find(params[:sale_transaction_id])
    @sold_item.destroy
    redirect_to sale_transaction_path(@sale_transaction)
  end

  private
    def sold_item_params
      params.require(:sold_item).permit(:product_id, :quantity, :price_per_unit)
    end
end
