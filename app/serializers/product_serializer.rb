class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :brand, :image, :back_image, :third_image, :rating_average

  belongs_to :category
  has_many :reviews

end
