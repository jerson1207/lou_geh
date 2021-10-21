class ItemInventoriesController < ApplicationController
  def index
    @item_inventories = ItemInventory.all 
  end
end
