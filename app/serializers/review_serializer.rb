class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :star_rating, :comment, :include_user, :include_product_name

  belongs_to :user
end
