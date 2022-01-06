class ItemsController < ApplicationController
  def index
    @supply_deliver = SupplyDeliver.find(params[:supply_deliver_id])   
    @items = @supply_deliver.items.where('quantity > ?', 0)
  end

  def create
    @supply_deliver = SupplyDeliver.find(params[:supply_deliver_id])   
    @item = @supply_deliver.items.new(item_params)
    if @item.save
      @total = ItemInventory.find(@item.product_id)
      @total.quantity = @total.quantity + @item.quantity
      @total.save
      redirect_to supply_deliver_path( @supply_deliver)
    end
  end

  def destroy
    @supply_deliver = SupplyDeliver.find(params[:id])
    @item = @supply_deliver.items.find(params[:supply_deliver_id])
    if @item.destroy
      @total = ItemInventory.find(@item.product_id)
      @total.quantity = @total.quantity - @item.quantity
      @total.save
      redirect_to supply_deliver_path( @supply_deliver)
    end
  end

  private
    def item_params
      params.require(:item).permit(:product_id, :quantity, :unit_per_cost)
    end
end
