class ItemsController < ApplicationController
  def create
    @supply_deliver = SupplyDeliver.find(params[:supply_deliver_id])
    @item = @supply_deliver.items.new(item_params)
    if @item.save
      @quantity = ItemInventory.find_by(product_id: @item.product_id)
      @quantity.quantity = @quantity.quantity + @item.quantity
      redirect_to supply_deliver_path( @supply_deliver)
    end
  end

  def destroy
    
    @supply_deliver = SupplyDeliver.find(params[:id])
    @item = @supply_deliver.items.find(params[:supply_deliver_id])
    @item.destroy
    redirect_to supply_deliver_path( @supply_deliver)
  end

  private
    def item_params
      params.require(:item).permit(:product_id, :quantity, :unit_per_cost)
    end
end
