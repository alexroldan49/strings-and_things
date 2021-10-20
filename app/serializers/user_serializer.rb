class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :address, :username

  has_many :orders
end
