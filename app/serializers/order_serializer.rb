class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id

  belongs_to :user
  has_many :product_orders
end
