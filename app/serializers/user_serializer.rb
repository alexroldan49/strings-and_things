class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username

  has_many :orders
  has_many :addresses
  has_many :reviews
end
