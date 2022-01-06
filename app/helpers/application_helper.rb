module ApplicationHelper

  def product_name(product_id)
      Product.find(product_id).description
  end
end
