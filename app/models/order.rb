class Order < ApplicationRecord
  has_many :product_orders
  
  belongs_to :user

  accepts_nested_attributes_for :product_orders
end
