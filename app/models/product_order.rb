class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product


  def product_total
    self.product.price * self.quantity
  end
  
end
