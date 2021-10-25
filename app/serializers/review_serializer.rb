class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :star_rating, :comment, :include_user

  belongs_to :user
end
