class User < ApplicationRecord
    has_many :orders
    has_many :addresses
    has_many :reviews
    
    has_secure_password
end
