class ItemInventoriesController < ApplicationController
  def index
    @item_inventories = ItemInventory.where('quantity > ?', 0)
    @oos = ItemInventory.where('quantity = ?', 0)
  end
end
