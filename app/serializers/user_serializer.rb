class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username

  has_many :orders
  has_many :addresses
end
