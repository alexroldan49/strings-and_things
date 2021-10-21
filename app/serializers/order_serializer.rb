class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :status, :order_date, :order_total, :shipping

  belongs_to :user
  has_many :product_orders
end
