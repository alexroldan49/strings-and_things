class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :brand, :image, :back_image, :third_image

  belongs_to :category
end
