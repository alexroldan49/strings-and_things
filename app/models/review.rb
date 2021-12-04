class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def include_user
    return self.user.username
  end

  def include_product_name
    return self.product.name
  end
  
  
end
